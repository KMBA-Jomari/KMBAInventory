class UomsController < ApplicationController
  before_action :set_uom, only: %i[ show edit update destroy ]

  # GET /uoms or /uoms.json
  def index
    @uoms = Uom.all
  end

  # GET /uoms/1 or /uoms/1.json
  def show
  end

  # GET /uoms/new
  def new
    @uom = Uom.new
  end

  # GET /uoms/1/edit
  def edit
  end

  # POST /uoms or /uoms.json
  def create
    @uom = Uom.new(uom_params)

    respond_to do |format|
      if @uom.save
        format.html { redirect_to uom_url(@uom), notice: "Uom was successfully created." }
        format.json { render :show, status: :created, location: @uom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uoms/1 or /uoms/1.json
  def update
    respond_to do |format|
      if @uom.update(uom_params)
        format.html { redirect_to uom_url(@uom), notice: "Uom was successfully updated." }
        format.json { render :show, status: :ok, location: @uom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uoms/1 or /uoms/1.json
  def destroy
    @uom.destroy!

    respond_to do |format|
      format.html { redirect_to uoms_url, notice: "Uom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uom
      @uom = Uom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uom_params
      params.require(:uom).permit(:name, :description)
    end
end
