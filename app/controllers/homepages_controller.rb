class HomepagesController < ApplicationController
  before_action :set_homepage, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @homepages = Homepage.all
    respond_with(@homepages)
  end

  def show
    respond_with(@homepage)
  end

  def new
    @homepage = Homepage.new
    respond_with(@homepage)
  end

  def edit
  end

  def create
    @homepage = Homepage.new(homepage_params)
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
    def set_homepage
      @homepage = Homepage.find(params[:id])
    end

    def homepage_params
      params.require(:homepage).permit(:Content, :User_id)
    end
end
