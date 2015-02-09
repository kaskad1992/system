class UseeersController < ApplicationController

  before_action :set_useeer, only: [ :show, :edit, :update, :destroy]

  def index
    @useeers = Useeer.all
  end

  def show
  end

  def new
    @useeer = Useeer.new
  end

  def edit
  end

  def create
    @useeer = Useeer.new(useeer_params)
    respond_to do |format|
      if @useeer.save
        format.html { redirect_to @useeer, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @useeer }
      else
        format.html { render :new }
        format.json { render json: @useeer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @useeer.update(useeer_params)
        format.html { redirect_to @useeer, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @useeer }
      else
        format.html { render :edit }
        format.json { render json: @useeer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @useeer.destroy
    respond_to do |format|
      format.html { redirect_to useeers_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_useeer
    @useeer = Useeer.find(params[:id])
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def useeer_params
    params.require(:useeer).permit( :login, :password, :name, :surname, :role )
  end

end
