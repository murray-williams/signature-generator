class Signature < ApplicationRecord
validates :fullname, :email, :job_title, presence: true
validates :email, uniqueness: true
end
