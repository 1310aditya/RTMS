require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
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
      post :create, product: { desc: @product.desc, exp_date: @product.exp_date, i_location: @product.i_location, i_zone: @product.i_zone, inst_date: @product.inst_date, man_date: @product.man_date, status: @product.status, title: @product.title }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { desc: @product.desc, exp_date: @product.exp_date, i_location: @product.i_location, i_zone: @product.i_zone, inst_date: @product.inst_date, man_date: @product.man_date, status: @product.status, title: @product.title }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
