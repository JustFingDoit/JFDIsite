require 'test_helper'

class ProjMembsControllerTest < ActionController::TestCase
  setup do
    @proj_memb = proj_membs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proj_membs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proj_memb" do
    assert_difference('ProjMemb.count') do
      post :create, proj_memb: {  }
    end

    assert_redirected_to proj_memb_path(assigns(:proj_memb))
  end

  test "should show proj_memb" do
    get :show, id: @proj_memb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proj_memb
    assert_response :success
  end

  test "should update proj_memb" do
    put :update, id: @proj_memb, proj_memb: {  }
    assert_redirected_to proj_memb_path(assigns(:proj_memb))
  end

  test "should destroy proj_memb" do
    assert_difference('ProjMemb.count', -1) do
      delete :destroy, id: @proj_memb
    end

    assert_redirected_to proj_membs_path
  end
end
