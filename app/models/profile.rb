class Profile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :avatar, styles: [medium: "300x300>", thumb: "100x100>"],
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :phone_number, presence: true, numericality: true
  validates :bank_name, presence: true
  validates :account_number, presence: true, numericality: true
  validates :account_name, presence: true
end
