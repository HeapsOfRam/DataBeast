class CardsController < ApplicationController
  def new
  	@card = Card.new
  end

  def create
  	@card = Card.new(card_params)
  	if @card.save
  		flash[:success] = "DataBEAST Datafied"
  		redirect_to @card
  	else
  		render 'new'
  	end
  end

  def show
    if(params[:id] == "all")
      index
    else
      @card = Card.find(params[:id])
    end
  end

  def index
    @cards = Card.paginate(page: params[:page])
  end

  def update
  	@card = Card.find(params[:id])
  	if @card.update_attributes(card_params)
  		redirect_to @card
  	else
  		render "edit"
  	end
  end

  def edit
    @card = Card.find(params[:id])
    # if @card.update_attributes(params[:card])
    #   redirect_to @card
    # else
    #   redirect_to 'edit'
    # end
  end


  def destroy
  	Card.find(params[:id]).destroy
    flash.now[:success] = "Beast de-rezzed"
    render "all"
  end

  private 

    def card_params
      params.require(:card).permit(:name, :price, :power_level, :health_level)
    end  
end
