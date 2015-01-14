class HomepagesController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :set_homepage, only: [:show, :edit, :update, :destroy]
  before_action :set_page_information
  respond_to :html

  def index
    @homepages = Homepage.all
    respond_with(@homepages)
  end

  def show
  end

  def new
    @homepage = Homepage.new
    respond_with(@homepage)
  end

  def edit
  end

  def create
    @homepage = Homepage.new(homepage_params)
    if @homepage.content == nil
      @homepage.content = '<h1>This is your Homepage!</h1><p>You can edit it through the Homepage Control Panel.</p>'
    end 
    @homepage.save
    respond_with(@homepage)
  end

  def update
    @homepage.update(homepage_params)
    respond_with(@homepage)
  end

  def destroy
    @homepage.destroy
    respond_with(@homepage)
  end

  private
    def set_account
      @account = Account.find(params[:account_id])
    end

    def set_homepage
      @homepage = @account.homepage if @account
    end

    def homepage_params
      params.require(:homepage).permit(:Content, :User_id)
    end

    def set_page_information
      @page_title = 'Homepage Index'
      @page_icon = 'home'
    end
end
