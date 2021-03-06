class Expert < ApplicationRecord
    belongs_to :service
    has_many :posts
    has_many :reservations # You need to add expert_id to the reservations table
    has_many :users, through: :reservations 
end
