Rails.application.routes.draw do

  get 'case/search' => 'case#search'
  root 'case#show'

end
