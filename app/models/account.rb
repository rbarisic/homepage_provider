class Account < ActiveRecord::Base
	after_create :build_default_homepage
	belongs_to :user, dependent: :destroy
	has_one :homepage

	private
		def build_default_homepage
		  homepage = create_homepage(content: "<h1>Hello, World!</h1><p>This is a fresh Homepage! If you are the owner, you can use <b>Spooner</b> below to edit it.<br>have fun!</p>")
		  self.homepage_id = homepage.id
		  save
		end
end


		def build_default_account
		  account = create_account(nickname: self.email)
		  self.account_id = account.id
		  save
		end