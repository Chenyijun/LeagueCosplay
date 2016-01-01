class User < ActiveRecord::Base

	#relationships
	has_many :user_champions

	#scopes
	scope :alphabetical, -> { order(:name)}

	#validations
	validate_presence_of :name, :email, :password
end
