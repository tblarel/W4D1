class ArtworksController < ApplicationController
    def index
        @artwork = Artwork.all 

        render json: @artwork, status: 200
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save

            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        @artwork = Artwork.find_by(id: params[:id])

        render json: @artwork 
    end

    def update
        @artwork = Artwork.find_by(id: params[:id])
        @artwork.update(artwork_params) 

        render json: @artwork , status: 200
    end

    def destroy
       Artwork.find(params[:id]).destroy
       render json: "artwork deleted", status:200
    end

    private
    
    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id) 
    end
end
