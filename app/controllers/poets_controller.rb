class PoetsController < ApplicationController
  before_action :set_poet, only: %i[ show edit update destroy ]

  # GET /poets or /poets.json
  def index
    @poets = Poet.all
  end

  # GET /poets/1 or /poets/1.json
  def show
  end

  # GET /poets/new
  def new
    @poet = Poet.new
  end

  # GET /poets/1/edit
  def edit
  end

  # POST /poets or /poets.json
  def create
    @poet = Poet.new(poet_params)

    respond_to do |format|
      if @poet.save
        format.html { redirect_to poet_url(@poet), notice: "Poet was successfully created." }
        format.json { render :show, status: :created, location: @poet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poets/1 or /poets/1.json
  def update
    respond_to do |format|
      if @poet.update(poet_params)
        format.html { redirect_to poet_url(@poet), notice: "Poet was successfully updated." }
        format.json { render :show, status: :ok, location: @poet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poets/1 or /poets/1.json
  def destroy
    @poet.destroy

    respond_to do |format|
      format.html { redirect_to poets_url, notice: "Poet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poet
      @poet = Poet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poet_params
      params.require(:poet).permit(:name, :year)
    end
end
