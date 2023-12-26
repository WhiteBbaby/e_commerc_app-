class ElectronicsController < ApplicationController
  before_action :set_electronic, only: %i[ show edit update destroy ]

  # GET /electronics
  def index
    @electronics = Electronic.all
  end

  # GET /electronics/1
  def show
  end

  # GET /electronics/new
  def new
    @electronic = Electronic.new
  end

  # GET /electronics/1/edit
  def edit
  end

  # POST /electronics
  def create
    @electronic = Electronic.new(electronic_params)

    if @electronic.save
      redirect_to @electronic, notice: "Electronic was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /electronics/1
  def update
    if @electronic.update(electronic_params)
      redirect_to @electronic, notice: "Electronic was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /electronics/1
  def destroy
    @electronic.destroy!
    redirect_to electronics_url, notice: "Electronic was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electronic
      @electronic = Electronic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electronic_params
      params.require(:electronic).permit(:name, :price, :description, :fulldescription, :image)
    end
end
