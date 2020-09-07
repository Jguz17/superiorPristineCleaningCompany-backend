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

    def destroy
        Message.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
