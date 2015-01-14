module HomepagesHelper

	def homepage_creator
		@account.nickname || @account.first_name || 'ANONYMOUS'
	end
end