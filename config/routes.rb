Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "songs#index"
  # Routes for the Song_list resource:
  # CREATE
  get "/song_lists/new", :controller => "song_lists", :action => "new"
  post "/create_song_list", :controller => "song_lists", :action => "create"

  # READ
  get "/song_lists", :controller => "song_lists", :action => "index"
  get "/song_lists/:id", :controller => "song_lists", :action => "show"

  # UPDATE
  get "/song_lists/:id/edit", :controller => "song_lists", :action => "edit"
  post "/update_song_list/:id", :controller => "song_lists", :action => "update"

  # DELETE
  get "/delete_song_list/:id", :controller => "song_lists", :action => "destroy"
  #------------------------------

  # Routes for the Playlist resource:
  # CREATE
  get "/playlists/new", :controller => "playlists", :action => "new"
  post "/create_playlist", :controller => "playlists", :action => "create"

  # READ
  get "/playlists", :controller => "playlists", :action => "index"
  get "/playlists/:id", :controller => "playlists", :action => "show"

  # UPDATE
  get "/playlists/:id/edit", :controller => "playlists", :action => "edit"
  post "/update_playlist/:id", :controller => "playlists", :action => "update"

  # DELETE
  get "/delete_playlist/:id", :controller => "playlists", :action => "destroy"
  #------------------------------

  # Routes for the Friend_request resource:
  # CREATE
  get "/friend_requests/new", :controller => "friend_requests", :action => "new"
  post "/create_friend_request", :controller => "friend_requests", :action => "create"

  # READ
  get "/friend_requests", :controller => "friend_requests", :action => "index"
  get "/friend_requests/:id", :controller => "friend_requests", :action => "show"

  # UPDATE
  get "/friend_requests/:id/edit", :controller => "friend_requests", :action => "edit"
  post "/update_friend_request/:id", :controller => "friend_requests", :action => "update"

  # DELETE
  get "/delete_friend_request/:id", :controller => "friend_requests", :action => "destroy"
  #------------------------------

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
