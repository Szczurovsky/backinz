class Character < ApplicationRecord
    belongs_to :user
    serialize :staty, Array
    serialize :przedmiotki
end
