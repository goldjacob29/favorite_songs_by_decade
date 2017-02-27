Rails.application.routes.draw do
  # Routes for the Genre resource:
  # CREATE
  get "/genres/new", :controller => "genres", :action => "new"
  post "/create_genre", :controller => "genres", :action => "create"

  # READ
  get "/genres", :controller => "genres", :action => "index"
  get "/genres/:id", :controller => "genres", :action => "show"

  # UPDATE
  get "/genres/:id/edit", :controller => "genres", :action => "edit"
  post "/update_genre/:id", :controller => "genres", :action => "update"

  # DELETE
  get "/delete_genre/:id", :controller => "genres", :action => "destroy"
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get "/artists/new", :controller => "artists", :action => "new"
  post "/create_artist", :controller => "artists", :action => "create"

  # READ
  get "/artists", :controller => "artists", :action => "index"
  get "/artists/:id", :controller => "artists", :action => "show"

  # UPDATE
  get "/artists/:id/edit", :controller => "artists", :action => "edit"
  post "/update_artist/:id", :controller => "artists", :action => "update"

  # DELETE
  get "/delete_artist/:id", :controller => "artists", :action => "destroy"
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get "/songs/new", :controller => "songs", :action => "new"
  post "/create_song", :controller => "songs", :action => "create"

  # READ
  get "/songs", :controller => "songs", :action => "index"
  get "/songs/:id", :controller => "songs", :action => "show"

  # UPDATE
  get "/songs/:id/edit", :controller => "songs", :action => "edit"
  post "/update_song/:id", :controller => "songs", :action => "update"

  # DELETE
  get "/delete_song/:id", :controller => "songs", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
