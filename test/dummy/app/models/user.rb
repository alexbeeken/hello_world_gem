class User < ApplicationRecord
  validates_email_format :email
end