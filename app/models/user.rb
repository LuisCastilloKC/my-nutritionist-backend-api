class User < ApplicationRecord
    has_secure_password
    has_many :patients
    
    # has_secure_password come from Bcrypt and will validate this data
    validates :firstname, presence: {message: "First name field is empty."}
    validates :lastname, presence: {message: "Last name field is empty."}
    validates :email, uniqueness: {message: "This email is already registered", email: true}
end
