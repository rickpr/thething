class FdisksController < ApplicationController
  before_action :set_fdisk, only: [:show, :edit, :update, :destroy]

  # GET /fdisks
  # GET /fdisks.json
  def index
    @fdisks = Fdisk.all
  end

  # GET /fdisks/1
  # GET /fdisks/1.json
  def show
  end

  # GET /fdisks/new
  def new
    @fdisk = Fdisk.new
  end

  # GET /fdisks/1/edit
  def edit
  end

  # POST /fdisks
  # POST /fdisks.json
  def create
    @fdisk = Fdisk.new(fdisk_params)

    respond_to do |format|
      if @fdisk.save
        format.html { redirect_to @fdisk, notice: 'Fdisk was successfully created.' }
        format.json { render :show, status: :created, location: @fdisk }
      else
        format.html { render :new }
        format.json { render json: @fdisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fdisks/1
  # PATCH/PUT /fdisks/1.json
  def update
    respond_to do |format|
      if @fdisk.update(fdisk_params)
        format.html { redirect_to @fdisk, notice: 'Fdisk was successfully updated.' }
        format.json { render :show, status: :ok, location: @fdisk }
      else
        format.html { render :edit }
        format.json { render json: @fdisk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fdisks/1
  # DELETE /fdisks/1.json
  def destroy
    @fdisk.destroy
    respond_to do |format|
      format.html { redirect_to fdisks_url, notice: 'Fdisk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fdisk
      @fdisk = Fdisk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fdisk_params
      params.require(:fdisk).permit(:file)
    end
end
