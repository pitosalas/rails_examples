class TaController < ApplicationController
  before_action :set_tum, only: [:show, :edit, :update, :destroy]

  # GET /ta
  # GET /ta.json
  def index
    @ta = Tum.all
  end

  # GET /ta/1
  # GET /ta/1.json
  def show
  end

  # GET /ta/new
  def new
    @tum = Tum.new
  end

  # GET /ta/1/edit
  def edit
  end

  # POST /ta
  # POST /ta.json
  def create
    @tum = Tum.new(tum_params)

    respond_to do |format|
      if @tum.save
        format.html { redirect_to @tum, notice: 'Tum was successfully created.' }
        format.json { render :show, status: :created, location: @tum }
      else
        format.html { render :new }
        format.json { render json: @tum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ta/1
  # PATCH/PUT /ta/1.json
  def update
    respond_to do |format|
      if @tum.update(tum_params)
        format.html { redirect_to @tum, notice: 'Tum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tum }
      else
        format.html { render :edit }
        format.json { render json: @tum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ta/1
  # DELETE /ta/1.json
  def destroy
    @tum.destroy
    respond_to do |format|
      format.html { redirect_to ta_url, notice: 'Tum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tum
      @tum = Tum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tum_params
      params.require(:tum).permit(:student_id, :course_id)
    end
end
