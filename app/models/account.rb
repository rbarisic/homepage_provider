class Account < ActiveRecord::Base
	after_create :build_default_homepage
	belongs_to :user, dependent: :destroy
	has_one :homepage

	private
		def build_default_homepage
		  homepage = create_homepage
		  self.homepage_id = homepage.id
		  save
		end
end