class WelcomeController < ApplicationController
  def index
  	@user = User.new
  	@root = true;
  end

  def learn
  end

  def help
  end
end
	