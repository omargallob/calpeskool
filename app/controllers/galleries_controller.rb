class GalleriesController < ApplicationController
  def index
  end

  def show
    @gallery = Gallery.find_by_title(params[:title].gsub(/-/," "), :order => "id asc")
  end

end
