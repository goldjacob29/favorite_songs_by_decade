class SongsController < ApplicationController
  def index
    @songs = Song.page(params[:page]).per(10)

    render("songs/index.html.erb")
  end

  def show
    @song_list = SongList.new
    @song = Song.find(params[:id])

    render("songs/show.html.erb")
  end

  def new
    @song = Song.new

    render("songs/new.html.erb")
  end

  def create
    @song = Song.new

    @song.title = params[:title]
    @song.artist_id = params[:artist_id]
    @song.genre_id = params[:genre_id]
    @song.decade = params[:decade]
    @song.year = params[:year]

    save_status = @song.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/songs/new", "/create_song"
        redirect_to("/songs")
      else
        redirect_back(:fallback_location => "/", :notice => "Song created successfully.")
      end
    else
      render("songs/new.html.erb")
    end
  end

  def edit
    @song = Song.find(params[:id])

    render("songs/edit.html.erb")
  end

  def update
    @song = Song.find(params[:id])

    @song.title = params[:title]
    @song.artist_id = params[:artist_id]
    @song.genre_id = params[:genre_id]
    @song.decade = params[:decade]
    @song.year = params[:year]

    save_status = @song.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/songs/#{@song.id}/edit", "/update_song"
        redirect_to("/songs/#{@song.id}", :notice => "Song updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Song updated successfully.")
      end
    else
      render("songs/edit.html.erb")
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    if URI(request.referer).path == "/songs/#{@song.id}"
      redirect_to("/", :notice => "Song deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Song deleted.")
    end
  end
end
