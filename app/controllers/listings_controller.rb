class ListingsController < ApplicationController
    def index
        @listings = Listing.all
    end

    def eager
        @listings = Listing.includes(:user => :address, :image_attachment => :blob).all
    end
end