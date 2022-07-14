module Frontend
  class GalleriesController < ApplicationController

    def index
      @gallery = Gallery.first
    end

  end
end
