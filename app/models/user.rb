class User < ApplicationRecord
     validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 255}
     validate :validate_username
     validates :email, presence: true, uniqueness: true, length: {minimum: 5, maximum: 255},
     format: {
          with: URI::MailTo::EMAIL_REGEXP
     }
     validates :first_name, presence: true
     validates :last_name, presence: true

     # associations
     has_many :posts
     has_one :profile

     private
     def validate_username
          unless username =~ /\A[a-zA-Z0-9_]+\Z/
               errors.add(:username, "Don't be using special characters. Also you be needing at least a letter and a number")
          end
     end
end
