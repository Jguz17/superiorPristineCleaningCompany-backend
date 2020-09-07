class Api::V1::BookingsController < ApplicationController
    skip_before_action :authorized
    def index 
        bookings = Booking.all
        render json: bookings
    end

    def show 
        booking = Booking.find(params[:id])
        render json: booking
    end

    def create
        user_id = params[:user_id]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        address = params[:address]
        datetime = params[:datetime]
        message = params[:message]

        booking = Booking.create( user_id: user_id, name: name, email: email, phone: phone, address: address, datetime: datetime, message: message)

        render json: booking
    end

    def edit 
        booking = Booking.find(param[:id])
    end

    def update
        user_id = params[:user_id]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        address = params[:address]
        datetime = params[:datetime]
        message = params[:message]

        booking = Booking.update( user_id: user_id, name: name, email: email, phone: phone, address: address, datetime: datetime, message: message)
        
        render json: booking
    end

    def destroy
        Booking.find(params[:id]).destroy
        render json: {message: 'success'}
    end
end
