Rails.application.routes.draw do
  get 'main_page' => 'static#main_page'
  root 'static#main_page'

  get 'artist' => 'artist#search'

  get 'albums' => 'albums#search'

  get 'songs' => 'songs#search'

  get 'topsongs' => 'topsong#chart'

  get 'topartists' => 'topartist#chart'

get 'toptags' => "toptags#chart"
end
