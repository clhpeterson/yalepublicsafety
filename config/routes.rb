Rails.application.routes.draw do

  post 'case/search' => 'case#search'
  root 'case#show'

end
