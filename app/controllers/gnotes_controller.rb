class GnotesController < ApplicationController

  def index
    @gnotes = Gnote.all
    render :json => @gnotes, serializer: GnoteSerializer
  end

  def create
    @gnote = Gnote.new(gnote_params)
    tags = params[:tags].split(",").collect(&:strip)
    if @gnote.save
      tags.each do |tag|
        @note.tags << Tag.create(name: tag)
          @note.save!
      end
      render :json => @gnote, serializer: GnoteSerializer
    else
      render :json => @gnote.errors.to_json
    end
  end


  def show
    @gnote = Gnote.find(params[:id])
    render :json => @gnote, serializer: GnoteSerializer
  end


  private

  def gnote_params
    params.permit(:title, :body, :tag_id)
  end


end
