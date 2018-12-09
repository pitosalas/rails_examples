class KeyvaluesController < ApplicationController
  before_action :set_keyvalue, only: [:show, :edit, :update, :destroy]

  # GET /keyvalues
  # GET /keyvalues.json
  def index
    @keyvalues = Keyvalue.all
  end

  # GET /keyvalues/1
  # GET /keyvalues/1.json
  def show
  end

  # GET /keyvalues/new
  def new
    @keyvalue = Keyvalue.new
  end

  # GET /keyvalues/1/edit
  def edit
  end

  # POST /keyvalues
  # POST /keyvalues.json
  def create
    @keyvalue = Keyvalue.new(keyvalue_params)

    respond_to do |format|
      if @keyvalue.save
        format.html { redirect_to @keyvalue, notice: 'Keyvalue was successfully created.' }
        format.json { render :show, status: :created, location: @keyvalue }
      else
        format.html { render :new }
        format.json { render json: @keyvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keyvalues/1
  # PATCH/PUT /keyvalues/1.json
  def update
    respond_to do |format|
      if @keyvalue.update(keyvalue_params)
        format.html { redirect_to @keyvalue, notice: 'Keyvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @keyvalue }
        puts "**** Broadcast key=#{keyvalue_params[:key]} value=#{keyvalue_params[:value]}"
        ValueUpdateChannel.broadcast_to "new_value", "x"
        ActionCable.server.broadcast("new_value", "x")

      else
        format.html { render :edit }
        format.json { render json: @keyvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyvalues/1
  # DELETE /keyvalues/1.json
  def destroy
    @keyvalue.destroy
    respond_to do |format|
      format.html { redirect_to keyvalues_url, notice: 'Keyvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_keyvalue
    @keyvalue = Keyvalue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def keyvalue_params
    params.require(:keyvalue).permit(:key, :value)
  end
end
