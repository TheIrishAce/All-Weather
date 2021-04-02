require 'blog_notification/notification'
require 'blog_notification/displayer'
require 'blog_notification/subject'
require 'day_of_week/current_day'

class BlogpostsController < ApplicationController
  #before_action :authenticate_user!
  before_action :ensure_admin, :only => [:edit, :destroy]
  before_action :set_blogpost, only: %i[ show edit update destroy ]



  def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized
    end
  end

  # GET /blogposts or /blogposts.json
  def index
    @blogposts = Blogpost.all
    @date = CurrentDate.instance.dayname
  end

  # GET /blogposts/1 or /blogposts/1.json
  def show
  end

  # GET /blogposts/new
  def new
    @blogpost = Blogpost.new
  end

  # GET /blogposts/1/edit
  def edit
  end

  # POST /blogposts or /blogposts.json
  def create
    
    @blogpost = Blogpost.new(blogpost_params)
    #@blogpost.add_observer(self)

    #puts "YERRRRRR" + @blogpost.title
    
    #@notification = BlogNotification.new(@blogpost.title, @blogpost.category, Time.now)
    #@displayer = Displayer.new(@notification)    

    
    #@notification.update_date()
    #render partial: "shared/newblog"


    respond_to do |format|
      if @blogpost.save
        #@notification.update_date()
        format.html { redirect_to blogposts_path , notice: "Blogpost was successfully created.", locals: {:title => @blogpost.title, :category => @blogpost.category, :date => @date}}
        #format.json { render :show, status: :created, location: @blogpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end
  helper_method :notification

  # PATCH/PUT /blogposts/1 or /blogposts/1.json
  def update
    respond_to do |format|
      if @blogpost.update(blogpost_params)
        format.html { redirect_to @blogpost, notice: "Blogpost was successfully updated." }
        format.json { render :show, status: :ok, location: @blogpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blogpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogposts/1 or /blogposts/1.json
  def destroy
    @blogpost.destroy
    respond_to do |format|
      format.html { redirect_to blogposts_url, notice: "Blogpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogpost
      @blogpost = Blogpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogpost_params
      params.require(:blogpost).permit(:title, :category, :author, :image_url, :content)
    end
end
