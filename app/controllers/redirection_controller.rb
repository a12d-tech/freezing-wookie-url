class RedirectionController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  def index
  end

  def redirect
    @link = Link.find_by(slug: params[:url_slug])
    if @link
      @link.viewed
      redirect_to @link.original_url
    else
      flash[:error] = "The page you were looking for doesn't exist!"
      redirect_to root_path
    end
  end

end
