class Expert < ApplicationRecord
    belongs_to :service
    has_many :posts
end
