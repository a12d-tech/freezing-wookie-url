class RedirectionController < ApplicationController
  layout 'link'
  
  before_action :authenticate_user!, only: [:index]

  def index
  end

  def redirect
    @link = Link.find_by(slug: params[:short_url_slug])
    @link.viewed
    redirect_to @link.original_url
  end

end
