class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end 
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customer = Customer.all
  end

private

def customer_params
  params.require(:customer).permit(:company, :address, :city, :state, :zip)
end

end
