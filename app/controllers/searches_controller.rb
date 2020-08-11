class SearchesController < ApplicationController
	def search
    @range = params[:range]
    search1 = params[:search1]
    word = params[:word]
    if @range =='1'
      @user = User.search(search1,word)
    elsif @range =='2'
      @shoes = Shoe.search(search1,word)
    elsif @range == '3'
      @brands = Brand.search(search1,word)
      @shoes = Shoe.where(brand_id: @brands.ids)
    elsif @range == '4'
      @sizes = Size.search(search1,word)
      @shoes = Shoe.where(size_id: @sizes.ids)
    elsif @range == '5'
      @types = Type.search(search1,word)
      @shoes = Shoe.where(type_id: @types.ids)
    else @range == '6'
      @leathers = Leather.search(search1,word)
      @shoes = Shoe.where(leather_id: @leathers.ids)
    end
  end

end
