require 'test_helper'

class PCatsControllerTest < ActionController::TestCase
  setup do
    @p_cat = p_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_cat" do
    assert_difference('PCat.count') do
      post :create, p_cat: { desc: @p_cat.desc, title: @p_cat.title }
    end

    assert_redirected_to p_cat_path(assigns(:p_cat))
  end

  test "should show p_cat" do
    get :show, id: @p_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_cat
    assert_response :success
  end

  test "should update p_cat" do
    patch :update, id: @p_cat, p_cat: { desc: @p_cat.desc, title: @p_cat.title }
    assert_redirected_to p_cat_path(assigns(:p_cat))
  end

  test "should destroy p_cat" do
    assert_difference('PCat.count', -1) do
      delete :destroy, id: @p_cat
    end

    assert_redirected_to p_cats_path
  end
end
