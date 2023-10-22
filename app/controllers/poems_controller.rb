class PoemsController < ApplicationController
  before_action :set_poem, only: %i[ show edit update destroy ]

  # GET /poems or /poems.json
  def index
    @poems = Poem.all
  end

  # GET /poems/1 or /poems/1.json when you click on a poem and it takes you to the individual poem page
  def show
  end

  # GET /poems/new
  def new
    @poem = Poem.new
    @poets = Poet.all
  end

  # GET /poems/1/edit
  def edit
  end

  # POST /poems or /poems.json
  def create
    @poem = Poem.new(poem_params)

    respond_to do |format|
      if @poem.save
        format.html { redirect_to poem_url(poems_path), notice: "Poem was successfully created." }
        format.json { render :show, status: :created, location: @poem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poems/1 or /poems/1.json
  def update
    respond_to do |format|
      if @poem.update(poem_params)
        format.html { redirect_to poem_url(@poem), notice: "Poem was successfully updated." }
        format.json { render :show, status: :ok, location: @poem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poems/1 or /poems/1.json
  def destroy
    @poem.destroy

    respond_to do |format|
      format.html { redirect_to poems_url, notice: "Poem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem
      @poem = Poem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poem_params
      params.require(:poem).permit(:name, :style, :poem, :poet_id)
    end
end
