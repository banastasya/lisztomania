class TopsongController < ApplicationController

  def chart
      url= "http://ws.audioscrobbler.com/2.0/?method=chart.gettoptracks&api_key=063306abb99de5c7b95bbd209614bab4&format=json"
      response = HTTParty.get url
      results = JSON.parse(response.body)
      @results = results['tracks']['track']
      @counter = 1

  end
end
