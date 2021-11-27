class CustomersController < ApplicationController

    before_action :set_customers, only: %w[show edit update destroy]
    
    def index
        @customers = Customer.all
    end

    def show; end

    def new
        @customer = Customer.new
    end
    
    def create
        @customer = Customer.new(customers_params)
        @customer.user = current_user
        if @customer.save
            redirect_to customers_path
        else
            render :new
        end
    end

    def edit; end

    def update
        if @customer.update(customers_params)
            redirect_to customer_path(@customer) 
        else
            render :edit
        end
    end
    
    def destroy
        @customer.destroy
        redirect_to customers_path
    end

    private

    def customers_params
        params.require(:customer).permit(:name, :email, :phone, :status, :date, :message)
    end

    def set_customers
        @customer = Customer.find(params[:id])
    end
end
