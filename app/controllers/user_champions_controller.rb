class UserChampionsController < ApplicationController
  before_action :set_user_champion, only: [:show, :edit, :update, :destroy]

  # GET /user_champions
  # GET /user_champions.json
  def index
    @user_champions = UserChampion.all
  end

  # GET /user_champions/1
  # GET /user_champions/1.json
  def show
  end

  # GET /user_champions/new
  def new
    @user_champion = UserChampion.new
  end

  # GET /user_champions/1/edit
  def edit
  end

  # POST /user_champions
  # POST /user_champions.json
  def create
    @user_champion = UserChampion.new(user_champion_params)

    respond_to do |format|
      if @user_champion.save
        format.html { redirect_to @user_champion, notice: 'User champion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_champion }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_champion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_champions/1
  # PATCH/PUT /user_champions/1.json
  def update
    respond_to do |format|
      if @user_champion.update(user_champion_params)
        format.html { redirect_to @user_champion, notice: 'User champion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_champion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_champions/1
  # DELETE /user_champions/1.json
  def destroy
    @user_champion.destroy
    respond_to do |format|
      format.html { redirect_to user_champions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_champion
      @user_champion = UserChampion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_champion_params
      params.require(:user_champion).permit(:user_id, :champion_id, :skin_id, :photo, :description)
    end
end
