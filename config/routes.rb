Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "trainers" => "trainers#index"
  get "trainers/:id" => "trainers#show"
  get "pokemons/reset" => "pokemons#reset"
  get "pokemons/:id" => "pokemons#show"
  patch "pokemons/:id" => "pokemons#update"
  get "pokemons" => "pokemons#index"
  

end
