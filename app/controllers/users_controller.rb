class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def eager
        @users = User.includes(:address).all
    end
end