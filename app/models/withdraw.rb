class Withdraw < ActiveRecord::Base
  belongs_to :user

  validates :amount, presence: true
  validates :status, presence: false, allow_blank: true
end
