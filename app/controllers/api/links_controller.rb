module Api
  class LinksController < ApplicationController

    protect_from_forgery with: :null_session

    respond_to :json

    before_action :authenticate_user!

    def create
      @link = current_user.links.build(links_params)
      if @link.save
        render :show, status: :created
      else
        render json: @link.errors, status: :unprocessable_entity
      end
    end

    def show
      @link = Link.find(params[:id])
      respond_with @link
    end

    private

    def links_params
      params.require(:link).permit(:original_url)
    end
  end
end