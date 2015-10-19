require 'test_helper'

class PSubCatsControllerTest < ActionController::TestCase
  setup do
    @p_sub_cat = p_sub_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_sub_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_sub_cat" do
    assert_difference('PSubCat.count') do
      post :create, p_sub_cat: { desc: @p_sub_cat.desc, title: @p_sub_cat.title }
    end

    assert_redirected_to p_sub_cat_path(assigns(:p_sub_cat))
  end

  test "should show p_sub_cat" do
    get :show, id: @p_sub_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_sub_cat
    assert_response :success
  end

  test "should update p_sub_cat" do
    patch :update, id: @p_sub_cat, p_sub_cat: { desc: @p_sub_cat.desc, title: @p_sub_cat.title }
    assert_redirected_to p_sub_cat_path(assigns(:p_sub_cat))
  end

  test "should destroy p_sub_cat" do
    assert_difference('PSubCat.count', -1) do
      delete :destroy, id: @p_sub_cat
    end

    assert_redirected_to p_sub_cats_path
  end
end
