class Api::V1::ThrashesController < ApplicationController
    skip_before_action :authorized

    def index 
        thrasher = Thrash.all

        render json: thrashes
    end

    def show 
        thrash = Thrash.find(params[:id])
    end

    def destroy
        Thrash.find(params[:id]).destroy

        render json: {message: 'success'}
    end
end
