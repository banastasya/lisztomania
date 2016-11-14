class ToptagsController < ApplicationController

  def chart
      url= "http://ws.audioscrobbler.com/2.0/?method=chart.gettoptags&api_key=063306abb99de5c7b95bbd209614bab4&format=json&limit=12"
      response = HTTParty.get url
      results = JSON.parse(response.body)
      @results = results['tags'].first[1]
      @counter = 1
  end
end
