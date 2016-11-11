Rails.application.routes.draw do
  get 'main_page' => 'static#main_page'
  root 'static#main_page'

  get 'artist' => 'artist#search'
end
