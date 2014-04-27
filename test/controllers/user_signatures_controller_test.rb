require 'test_helper'

class UserSignaturesControllerTest < ActionController::TestCase
  setup do
    @user_signature = user_signatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_signatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_signature" do
    assert_difference('UserSignature.count') do
      post :create, user_signature: { description: @user_signature.description, name: @user_signature.name, signature: @user_signature.signature }
    end

    assert_redirected_to user_signature_path(assigns(:user_signature))
  end

  test "should show user_signature" do
    get :show, id: @user_signature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_signature
    assert_response :success
  end

  test "should update user_signature" do
    patch :update, id: @user_signature, user_signature: { description: @user_signature.description, name: @user_signature.name, signature: @user_signature.signature }
    assert_redirected_to user_signature_path(assigns(:user_signature))
  end

  test "should destroy user_signature" do
    assert_difference('UserSignature.count', -1) do
      delete :destroy, id: @user_signature
    end

    assert_redirected_to user_signatures_path
  end
end
