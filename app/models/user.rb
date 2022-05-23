class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email
  has_one :character
  after_create :create_character
# accepts_nested_attributes_for :characters, reject_if: ->(reject_characters){ attributes['character_id'].blank? }, allow_destroy: true
end
