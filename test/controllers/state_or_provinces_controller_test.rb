require 'test_helper'

class StateOrProvincesControllerTest < ActionController::TestCase
  setup do
    @state_or_province = state_or_provinces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_or_provinces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_or_province" do
    assert_difference('StateOrProvince.count') do
      post :create, state_or_province: { name: @state_or_province.name, postalAbbreviation: @state_or_province.postalAbbreviation }
    end

    assert_redirected_to state_or_province_path(assigns(:state_or_province))
  end

  test "should show state_or_province" do
    get :show, id: @state_or_province
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_or_province
    assert_response :success
  end

  test "should update state_or_province" do
    patch :update, id: @state_or_province, state_or_province: { name: @state_or_province.name, postalAbbreviation: @state_or_province.postalAbbreviation }
    assert_redirected_to state_or_province_path(assigns(:state_or_province))
  end

  test "should destroy state_or_province" do
    assert_difference('StateOrProvince.count', -1) do
      delete :destroy, id: @state_or_province
    end

    assert_redirected_to state_or_provinces_path
  end
end
