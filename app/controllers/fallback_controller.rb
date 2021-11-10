class FallbackController < ApplicationController
  def index
    # For fullstack
    # render file: 'public/index.html'
    # for backend only:
    render json: {message: "Hi"}
  end
end
