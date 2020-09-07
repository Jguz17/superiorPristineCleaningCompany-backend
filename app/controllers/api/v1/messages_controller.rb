class Api::V1::MessagesController < ApplicationController
    skip_before_action :authorized

    def index 
        messages = Message.all

        render json: messages
    end

    def show 
        message = Message.find(params[:id])

        render json: message
    end

    # t.integer :user_id
    # t.string :name
    # t.string :email
    # t.string :phone
    # t.string :content
    # t.datetime :datetime, :default => nil

    def create 
        user_id = params[:user_id]
        name = params[:name]
        email = params[:email]
        phone = params[:phone]
        content = params[:content]
        datetime = params[:datetime]

        message = Message.create(user_id: user_id, name: name, email: email, phone: phone, content: content, datetime: datetime)

        render json: message
    end

    def destroy
        Message.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
