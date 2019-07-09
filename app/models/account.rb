class Account < ApplicationRecord
    VALID_PASSWORD_REGEX = /(?=.*?[0-9])(?=.*?[#?!@$%^&*-])(.{6,}$)/

    validates :user_name, :password, :email, presence: true
    validates :password, :user_name, uniqueness: true
    validates :user_name, length: { minimum: 5 }
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: "password needs to have 1 number and 1 special character" }

end
