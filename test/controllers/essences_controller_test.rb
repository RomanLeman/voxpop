require 'test_helper'

class EssencesControllerTest < ActionController::TestCase
  setup do
    @essence = essences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:essences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create essence" do
    assert_difference('Essence.count') do
      post :create, essence: { description: @essence.description, exp: @essence.exp, exp: @essence.exp, img_url: @essence.img_url, locate: @essence.locate, price: @essence.price, rating: @essence.rating, title: @essence.title }
    end

    assert_redirected_to essence_path(assigns(:essence))
  end

  test "should show essence" do
    get :show, id: @essence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @essence
    assert_response :success
  end

  test "should update essence" do
    patch :update, id: @essence, essence: { description: @essence.description, exp: @essence.exp, exp: @essence.exp, img_url: @essence.img_url, locate: @essence.locate, price: @essence.price, rating: @essence.rating, title: @essence.title }
    assert_redirected_to essence_path(assigns(:essence))
  end

  test "should destroy essence" do
    assert_difference('Essence.count', -1) do
      delete :destroy, id: @essence
    end

    assert_redirected_to essences_path
  end
end
