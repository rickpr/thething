require 'test_helper'

class FdisksControllerTest < ActionController::TestCase
  setup do
    @fdisk = fdisks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fdisks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fdisk" do
    assert_difference('Fdisk.count') do
      post :create, fdisk: { file: @fdisk.file }
    end

    assert_redirected_to fdisk_path(assigns(:fdisk))
  end

  test "should show fdisk" do
    get :show, id: @fdisk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fdisk
    assert_response :success
  end

  test "should update fdisk" do
    patch :update, id: @fdisk, fdisk: { file: @fdisk.file }
    assert_redirected_to fdisk_path(assigns(:fdisk))
  end

  test "should destroy fdisk" do
    assert_difference('Fdisk.count', -1) do
      delete :destroy, id: @fdisk
    end

    assert_redirected_to fdisks_path
  end
end
