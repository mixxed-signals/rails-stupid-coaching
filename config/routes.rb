Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/ask', to: 'questions#ask', as: :ask

  get '/answer', to: 'questions#answer', as: :answer
end

=begin

including the as: option -> specify custom names for the route helpers.
as: :ask assigns the name :ask to the questions#ask route,
as: :answer assigns the name :answer to the questions#answer route.

=end
