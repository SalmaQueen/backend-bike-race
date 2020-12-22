class Slogan < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true 
    validates_presence_of :slogan 
    validates_length_of :slogan, :maximum=> 50
    validates :email, uniqueness: true
    validates :email, format: { with: /\S+@\S+\.\S+/, on: :create }
end