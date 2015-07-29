class ListsController < ApplicationController
  
  def index
  	@lists = List.all
  end

  def new
    # @user = User.find(params[:id])
  	@list = List.new
    3.times do
      trip = @list.trips.build
      4.times { trip.kids.build }
    end  
  end

  def create
    # @current_user = User.find(params[:id])

    @list = List.create(list_params)
    # @list = @current_user.lists.build
  end

  def show
  end

  def default_items
    @default_items = Item.where(:age_group => 'all')
  end

  def infant_items
    @infant_items = Item.where(:age_group => 'infant')
  end

  def toddler_items
    @toddler_items = Item.where(:age_group => 'toddler')
  end

  def cold_weather_items
    @cold_weather_items = Item.where(:weather => 'cold')
  end

  def formal_wear_items
   @formal_wear_items = Item.where(:activity => 'wedding/funeral')
  end

  def swimming_items
   @swimming_items = Item.where(:activity => 'swimming')
  end

  def rain_items
   @rain_items = Item.where(:weather => 'rainy')
  end

  # default_items.map do |item| item.name
  # end 


  private
  
  def list_params
    params.require(:list).permit(:item_name, :age_group, :quantity, :weather, :activity)
  end

 



end
