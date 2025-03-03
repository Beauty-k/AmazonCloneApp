class ShippingAddressesController < ApplicationController
    before_action :authenticate_user
    before_action :set_shipping_address, only: %i[edit update destroy]

    def index
        @shipping_addresses = current_user.shipping_addresses
    end

    def new
        @shipping_address = current_user.shipping_addresses.new
    end

    def create
        @shipping_address = current_user.shipping_addresses.new(shipping_address_params)
        if @shipping_address.save
            redirect_to shipping_addresses_path, notice: "Shipping address added successfully!"
        else
            puts @shipping_address.errors.full_messages 
            flash[:alert] = "Shipping address could not be added!"
            render :new, status: :unprocessable_entity
        end
    end 

    def edit
    
    end

    def update

        if @shipping_address.update(shipping_address_params)
            redirect_to shipping_addresses_path, notice: "shipping address updated successfully"
        else
            render :edit
        end
    end

    def destroy
        @shipping_address = current_user.shipping_addresses.find(params[:id])
        if @shipping_address
            @shipping_address.destroy
            redirect_to shipping_addresses_path, notice: "shipping address deleted successfully!"
        else
            redirect_to shipping_addresses_path, notice: "Shipping address not found"
        end
    end

    private
    
    def set_shipping_address
        @shipping_address = current_user.shipping_addresses.find(params[:id])
        rescue ActiveRecord::RecordNotFound
        redirect_to shipping_addresses_path, alert: "Shipping address not found."
    end

    def shipping_address_params
        params.require(:shipping_address).permit(:full_name, :phone_number, :address_line1, :address_line2, :city, :state, :country, :zip_code, :default)
    end
end
