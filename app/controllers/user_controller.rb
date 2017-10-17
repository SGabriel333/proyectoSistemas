class UserController < ApplicationController
   before_action :authenticate_user!
   before_action :set_user, only: [:show, :edit, :update,:destroy]
  def index
		@users=User.all
	end
  # GET /carreras/1
  # GET /carreras/1.json
  def show
  end

  # GET /carreras/new
  def new
    @user = User.new
  end

  # GET /carreras/1/edit
  def edit
  end

  # POST /carreras
  # POST /carreras.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Carrera was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carreras/1
  # PATCH/PUT /carreras/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Carrera was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carreras/1
  # DELETE /carreras/1.json
  def destroy
    if @user.has_role :admin? 
     @user.destroy
    else
     respond_to do |format|
      format.html { redirect_to user_url, notice: 'Carrera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:last_name,:email,:password,:password_confirmation)
    end
end
