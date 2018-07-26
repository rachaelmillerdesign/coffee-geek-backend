class TastingsController < ProtectedController
  before_action :set_example, only: %i[update destroy]

  # GET /tastings
  def index
    @tastings = Tasting.all

    render json: @tastings
  end

  # GET /tastings/1
  def show
    render json: Tasting.find(params[:id])
  end

  # POST /tastings
  def create
    @tasting = current_user.tastings.build(tasting_params)

    if @tasting.save
      render json: @tasting, status: :created
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

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasting
      @tasting = Tasting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tasting_params
      params.require(:tasting).permit(:user, :coffee, :date, :tasting_notes, :grams_in, :grams_out, :time, :temperature, :extraction_notes)
    end
end
