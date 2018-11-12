class Expert < ApplicationRecord
    belongs_to :service
    has_many :posts
    has_many :users, through: :reservations 
end
