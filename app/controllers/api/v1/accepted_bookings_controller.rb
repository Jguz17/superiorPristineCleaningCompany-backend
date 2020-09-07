class Api::V1::AcceptedBookingsController < ApplicationController
    skip_before_action :authorized
    def index 
        accepted_bookings = AcceptedBooking.all
        render json: accepted_bookings
    end

    def show 
        accepted_bookings = AcceptedBooking.find(params[:id])
        render json: accepted_bookings
    end

    def create
        user_id = params[:user_id]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        address = params[:address]
        datetime = params[:datetime]
        message = params[:message]

        accepted_booking = AcceptedBooking.create( user_id: user_id, name: name, email: email, phone: phone, address: address, datetime: datetime, message: message)

        render json: accepted_booking
    end

    def edit 
        accepted_booking = AcceptedBooking.find(param[:id])
    end

    def update
        user_id = params[:user_id]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        address = params[:address]
        datetime = params[:datetime]
        message = params[:message]

        accepted_booking = AcceptedBooking.update( user_id: user_id, name: name, email: email, phone: phone, address: address, datetime: datetime, message: message)
        
        render json: accepted_booking
    end

    def destroy
        AcceptedBooking.find(params[:id]).destroy
        render json: {message: 'success'}
    end
end
