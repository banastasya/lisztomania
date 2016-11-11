class AlbumsController < ApplicationController

  def search
    @input = params[:q]
    unless @input.nil?
      url = "https://itunes.apple.com/search?term=#{@input}&limit=24"
      response = HTTParty.get url
      results = JSON.parse(response.body)
      @results = results['results']
    end
  end
end
