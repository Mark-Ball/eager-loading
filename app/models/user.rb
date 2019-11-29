class User < ApplicationRecord
    has_one :address
    has_many :listings
end
