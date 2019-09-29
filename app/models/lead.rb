class Lead < ApplicationRecord
  belongs_to :business
  validates :email, presence: :true
end
