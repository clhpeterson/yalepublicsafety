Rails.application.routes.draw do

  post 'case/search' => 'case#search'
  get '*path' => 'case#show'
  root 'case#show'

end
