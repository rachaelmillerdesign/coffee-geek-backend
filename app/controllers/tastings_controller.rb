class TastingsController < ApplicationController
  before_action :set_tasting, only: [:show, :update, :destroy]

  # GET /tastings
  def index
    @tastings = Tasting.all

    render json: @tastings
  end

  # GET /tastings/1
  def show
    render json: @tasting
  end

  # POST /tastings
  def create
    @tasting = Tasting.new(tasting_params)

    if @tasting.save
      render json: @tasting, status: :created, location: @tasting
    else
      render json: @tasting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tastings/1
  def update
    if @tasting.update(tasting_params)
      render json: @tasting
    else
      render json: @tasting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tastings/1
  def destroy
    @tasting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasting
      @tasting = Tasting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tasting_params
      binding.pry
      params.require(:tasting).permit(:user, :coffee, :date, :tasting_notes, :grams_in, :grams_out, :time, :temperature, :extraction_notes)
    end
end

# create_table :tastings do |t|
#   t.references :user, index: true, foreign_key: true, null: false
#   t.references :coffee, index: true, foreign_key: true, null: false
#   t.string :date
#   t.string :tasting_notes
#   t.integer :grams_in
#   t.integer :grams_out
#   t.time :time
#   t.integer :temperature
#   t.string :extraction_notes
