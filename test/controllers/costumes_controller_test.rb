require 'test_helper'

class CostumesControllerTest < ActionController::TestCase
  setup do
    @costume = costumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costume" do
    assert_difference('Costume.count') do
      post :create, costume: { back: @costume.back, cid: @costume.cid, description: @costume.description, photo: @costume.photo, wd: @costume.wd }
    end

    assert_redirected_to costume_path(assigns(:costume))
  end

  test "should show costume" do
    get :show, id: @costume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costume
    assert_response :success
  end

  test "should update costume" do
    patch :update, id: @costume, costume: { back: @costume.back, cid: @costume.cid, description: @costume.description, photo: @costume.photo, wd: @costume.wd }
    assert_redirected_to costume_path(assigns(:costume))
  end

  test "should destroy costume" do
    assert_difference('Costume.count', -1) do
      delete :destroy, id: @costume
    end

    assert_redirected_to costumes_path
  end
end
