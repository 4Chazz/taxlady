class HomeController < ApplicationController

  def index
    @contact = Home.new(params[:home])
  end

  def new
    @contact = Home.new
  end

  def create
    @contact = Home.new(params[:home])
    @contact.request = request
    if @contact.deliver

      @contact = Home.new
      # flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path

    else
      # flash.now[:error] = "Please complete all fields."
      render :new
    end
  end

  private
  def home_params
    params.require(:email).permit(:name, :message)
  end

end
#