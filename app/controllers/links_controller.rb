class LinksController < ApplicationController

  before_action :authenticate_user!

  def new
    @link = current_user.links.build
  end

  def create
    @link = current_user.links.build(links_params)
    if @link.save
      flash[:success] = "Shortened url created!"
      redirect_to(@link)
    else
      flash[:error] = @link.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @link = current_user.links.find(params[:id])
  end

  private

  def links_params
    params.require(:link).permit(:original_url)
  end
end
