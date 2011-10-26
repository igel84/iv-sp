class PagesController < ApplicationController
  before_filter :check_administrator_role, :only => [:new, :create, :edit, :update, :destroy]
  
  def index
  end
  
  def new
    @page = Page.new
    @page.parent_id = params[:id] if params[:id]
  end
  
   def create
    @page = Page.new(params[:page])
    @page.user_id = logged_in_user
    @page.save
    redirect_to :root
  end
  
  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:page][:id])
    @page.update_attributes(params[:page])
    redirect_to :root
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to :root
  end

end
