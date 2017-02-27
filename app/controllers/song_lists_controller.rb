class SongListsController < ApplicationController
  def index
    @q = SongList.ransack(params[:q])
    @song_lists = @q.result(:distinct => true).includes(:song, :playlist).page(params[:page]).per(10)

    render("song_lists/index.html.erb")
  end

  def show
    @song_list = SongList.find(params[:id])

    render("song_lists/show.html.erb")
  end

  def new
    @song_list = SongList.new

    render("song_lists/new.html.erb")
  end

  def create
    @song_list = SongList.new

    @song_list.song_id = params[:song_id]
    @song_list.playlist_id = params[:playlist_id]

    save_status = @song_list.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/song_lists/new", "/create_song_list"
        redirect_to("/song_lists")
      else
        redirect_back(:fallback_location => "/", :notice => "Song list created successfully.")
      end
    else
      render("song_lists/new.html.erb")
    end
  end

  def edit
    @song_list = SongList.find(params[:id])

    render("song_lists/edit.html.erb")
  end

  def update
    @song_list = SongList.find(params[:id])

    @song_list.song_id = params[:song_id]
    @song_list.playlist_id = params[:playlist_id]

    save_status = @song_list.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/song_lists/#{@song_list.id}/edit", "/update_song_list"
        redirect_to("/song_lists/#{@song_list.id}", :notice => "Song list updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Song list updated successfully.")
      end
    else
      render("song_lists/edit.html.erb")
    end
  end

  def destroy
    @song_list = SongList.find(params[:id])

    @song_list.destroy

    if URI(request.referer).path == "/song_lists/#{@song_list.id}"
      redirect_to("/", :notice => "Song list deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Song list deleted.")
    end
  end
end
