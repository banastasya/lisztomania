class ArtistController < ApplicationController

  def search
    input = params[:q]
    unless input.nil?
      if input.include?(" ")
        input.gsub!(/ /, '+')
      end
    url = "https://itunes.apple.com/search?term=#{input}&limit=25"
    response = HTTParty.get url
    results = JSON.parse(response.body)
    @results = results['results'][1]['trackName']
    @albumresults = results['results'][1]['collectionName']
    end

  end
end
