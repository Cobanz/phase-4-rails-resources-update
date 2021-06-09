Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  #custom route for adding likes so front end dosent have to keep track 
  patch "/birds/:id/like", to: "birds#increment_likes"
end
