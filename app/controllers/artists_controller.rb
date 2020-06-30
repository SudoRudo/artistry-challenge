class ArtistsController < ApplicationController
    before_action :find_artist, only: [:edit, :update, :show, :delete]

    def index
        @artists = Artist.all 
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:my_errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    def show
    end

    def edit
    end

    def update
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:my_errors] = @artist.errors.full_messages
            redirect_to edit_artist_path
        end
    end

    def destroy
        @artist.destroy
        redirect_to artists_path
    end

    private
    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end

end
