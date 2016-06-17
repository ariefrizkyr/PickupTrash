class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :admin

  validates :address, presence: true
  validates :direction, presence: true
  validates :phone_number, presence: true, numericality: true
  validates :status, presence: false, allow_blank: true
  validates :price, presence: false, allow_blank: true
  validates :weight, presence: false, allow_blank: true
end
