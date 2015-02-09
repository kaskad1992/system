class ConstituenciesController < ApplicationController

  before_action :set_constituency, only: [ :show, :edit, :update, :destroy ] 
  
  def index
    @constituency = Constituency.all
  end
  
  def show
    if @constituency.card_number < @constituency.votes
      flash[:notice] = 'Coś jest very wrong! Number of cards < Number of votes'
    end
    if @constituency.card_number > @constituency.votes
      flash[:notice] = 'Coś jest wrong! Number of cards > Number of votes'
    end
    if @constituency.card_number == @constituency.votes
      flash[:notice] = 'WOW It`s okay!'
    end

#    if @constituency.name == 'Const2'
#      flash[:notice] = 'Hello Kot Kotowski :)'
#    end
#    if @constituency.name == 'Const1'    
#      flash[:notice] = 'Hello Mike Mazowski :)'
#    end
#    if @constituency.name == 'Const3'    
#      flash[:notice] = 'Hello Panda Trzy :)'
#    end
  end
  
  def new
    @constituency = Constituency.new
  end
  
  def edit
  end
  
  def create
    @constituency = Constituency.new(constituency_params)
    respond_to do |format|
      if @constituency.save
        format.html { redirect_to @constituency, notice: 'Constituency was successfully created.' }
        format.json { render :show, status: :created, location: @constituency }
      else
        format.html { render :new }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @constituency.update(constituency_params)
        format.html { redirect_to @constituency, notice: 'Constituency was successfully updated.' }
        format.json { render :show, status: :ok, location: @constituency }
      else
        format.html { render :edit }
        format.json { render json: @constituency.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @constituency.destroy
    respond_to do |format|
      format.html { redirect_to constituencies_url, notice: 'Constituency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_constituency
    @constituency = Constituency.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def constituency_params
    params.require(:constituency).permit( :name, :number_of_voters, :votes, :card_number )
  end

end
