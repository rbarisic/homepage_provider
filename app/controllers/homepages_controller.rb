class HomepagesController < ApplicationController
  before_action :set_account, only: [:show, :edit, :destroy]
  before_action :set_homepage, only: [:show, :edit, :update, :destroy]
  # before_action :set_header, only: [:show]
  before_action :set_page_information


  respond_to :html

  def index
    @homepages = Homepage.all
    respond_with(@homepages)
  end

  def show

    if user_is_visitor?
      @header = false
      @footer = true 
    end
  end

  def new
    @homepage = Homepage.new
    respond_with(@homepage)
  end

  def edit
  end

  def create
    @homepage = Homepage.new(homepage_params)
    @homepage.content = '<h1>Hello, World!</h1><p>This is your homepage. You can use <b>Spooner</b> below to edit it.<br>have fun!</p>'
    @homepage.save
    respond_with(@homepage)
  end

  def update
    @homepage = Homepage.find(params[:id])
    @homepage.content = Homepage.find(params[:id])
    @homepage.account_id = 1
    @homepage.update(homepage_params)
    respond_with(@homepage)
    after_save { create_css_file }
  end

  def destroy
    @homepage.destroy
    respond_with(@homepage)
  end

  def user_is_visitor?
    return true if !user_signed_in? || @account.user != current_user
  end

  def save_css_file
    #
  end

  def create_css_file
    path = "/user_files/css/#{@account_id}.css"
    content = @account.content
    File.open(path, "w+") do |f|
      f.write(content)
    end
  end

  private
    def set_account
      @account = Account.find(params[:account_id])
    end

    def set_homepage
      @homepage = @account.homepage if @account
    end

    def homepage_params
      params.require(:homepage).permit(:content, :account_id)
    end

    def set_page_information
      @page_title = 'Homepage'
      @page_icon = 'home'
    end
end