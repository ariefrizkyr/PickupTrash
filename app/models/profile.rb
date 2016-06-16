class Profile < ActiveRecord::Base
  belongs_to :user

  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :phone_number, presence: true, numericality: true
  validates :bank_name, presence: true
  validates :account_number, presence: true, numericality: true
  validates :account_name, presence: true
end
