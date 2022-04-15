class Api::StaticsController < ApplicationController
    def home
        render json: {status: "It's working"}
    end
end