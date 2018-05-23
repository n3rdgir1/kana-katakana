class KanasController < ApplicationController
  # GET /kanas
  def index
    @kanas = Kana.all

    render json: @kanas
  end

  # GET /kanas/1
  def show
    @kana = Kana.find(params[:id])
    render json: @kana
  end
end
