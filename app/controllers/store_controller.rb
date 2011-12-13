class StoreController < ApplicationController
  def index

    @products = Product.all
    @time = Time.now.strftime("%H:%M:%S")
    @date = Time.now.strftime("%m/%d/%Y")

  end

end
