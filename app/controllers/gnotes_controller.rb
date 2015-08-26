class GnotesController < ApplicationController

  def index
    @gnotes = Gnote.all
    render :json => @gnotes.to_json
  end

  def create
    @gnote = Gnote.new(gnote_params)
    if @gnote.save!
      render :json => @gnote.to_json
    else
      render :json => @gnote.errors.to_json
    end
  end

  def show
    @gnote = Gnote.find(params[:id])
    render :json => @gnote.to_json
  end


  private

  def gnote_params
    params.permit(:title, :body, :tag_id)
  end


end
