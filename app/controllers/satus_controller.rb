class SatusController < ApplicationController
  before_action :set_satu, only: [:show, :edit, :update, :destroy]

  # GET /satus
  # GET /satus.json
  def index
    @satus = Satu.all
  end

  # GET /satus/1
  # GET /satus/1.json
  def show
  end

  # GET /satus/new
  def new
    @satu = Satu.new
  end

  # GET /satus/1/edit
  def edit
  end

  # POST /satus
  # POST /satus.json
  def create
    @satu = Satu.new(satu_params)

    respond_to do |format|
      if @satu.save
        format.html { redirect_to @satu, notice: 'Satu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @satu }
      else
        format.html { render action: 'new' }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /satus/1
  # PATCH/PUT /satus/1.json
  def update
    respond_to do |format|
      if @satu.update(satu_params)
        format.html { redirect_to @satu, notice: 'Satu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @satu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /satus/1
  # DELETE /satus/1.json
  def destroy
    @satu.destroy
    respond_to do |format|
      format.html { redirect_to satus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_satu
      @satu = Satu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def satu_params
      params.require(:satu).permit(:name, :content)
    end
end
