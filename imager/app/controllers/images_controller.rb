class ImagesController < ApplicationController
  KNOWN_IMAGES = Dir.children(Rails.root.join('images')).freeze

  def show
    expires_in(5.minutes, public: true)
    if KNOWN_IMAGES.include?(params[:id])
      send_file(Rails.root.join('images', params[:id]), disposition: :inline)
    else
      head :not_found
    end
  end
end