class Api::V1::ThrashesController < ApplicationController
    skip_before_action :authorized

    def index 
        thrashes = Thrash.all

        render json: thrashes
    end

    def show 
        thrash = Thrash.find(params[:id])

        render json: thrash
    end

    def destroy
        Thrash.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
