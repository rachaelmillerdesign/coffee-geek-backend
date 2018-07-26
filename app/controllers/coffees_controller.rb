class CoffeesController < ProtectedController
  before_action :set_example, only: %i[update destroy]

  # GET /coffees
  def index
    @coffees = Coffee.all

    render json: @coffees
  end

  # GET /coffees/1
  def show
    render json: Coffee.find(params[:id])
  end

  # POST /coffees
  def create
    @coffee = current_user.coffees.build(coffee_params)
    # binding.pry

    if @coffee.save
      render json: @coffee, status: :created
    else
      render json: @coffee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coffees/1
  def update
    if @coffee.update(coffee_params)
      render json: @coffee
    else
      render json: @coffee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coffees/1
  def destroy
    @coffee.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee
      @coffee = current_user.coffees.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coffee_params
      params.require(:coffee).permit(:roaster, :blend, :favorite, :rating, :days_post_roast, :espresso)
    end
end
