class Signature < ApplicationRecord
validates :fullname, :email, :job_title, presence: true
validates :email, uniqueness: true
validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
