require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
# added here by dave next
    @update = {
      :title => 'Lorem Ipsum',
      :description => 'Wibbles are fun !',
      :image_url => 'lorem.jpg',
      :price => 19.95
      }
# added here by dave prev    
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do

    assert_difference('Product.count') do
# replaced here next
#      post :create, product: @product.attributes
    post :create,  :product => @update
# replaced here prev
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product.to_param
    assert_response :success
  end

  test "should update product" do
# replace the following line
#    put :update, id: @product.to_param, product: @product.attributes
     put :update, :id => @product.to_param, :product => @update
#replace the prior line
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product.to_param
    end

    assert_redirected_to products_path
  end
end
