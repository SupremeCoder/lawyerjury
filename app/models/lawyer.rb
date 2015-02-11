class Lawyer < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	has_many :reviews

	validates :name, :address, :city, :state, :zip, :phone, :website, :practice, :image, presence: true
	validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
    message: "must be in the format (123) 456-7890" }
    validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https://" }
	validates :address, format: { with: /\A\d+[^,]+\z/,
    message: "must be in the format 123 Main Street" }
	validates :state, format: { with: /\A[a-zA-Z]{2}\z/,
    message: "must be two-letter capital abbreviation" }
    validates :zip, format: { with: /\A\d{5}\z/,
    message: "must be five number zip code" }
end