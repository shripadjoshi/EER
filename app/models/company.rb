class Company < ApplicationRecord
	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>", small: "50x60>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
  	validates :name, :logo, :website, :address, :country, :state, :city, :pincode, :company_type, :industry_type, presence: true
  	validates :name, :website, uniqueness: true
  	validates :pincode, numericality: { only_integer: true }
  	validates :phone_no, :mobile_no, numericality: { only_integer: true, allow_nil: true }
  	validates :pincode, length: {is: 6}
  	validates :pincode, format: { with: /\A[1-9][0-9]+\z/, message: "only allows numbers" }
  	validates :mobile_no, length: {is: 10, allow_nil: true }
end