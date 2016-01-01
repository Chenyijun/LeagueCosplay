require 'test_helper'

class UserChampionsControllerTest < ActionController::TestCase
  setup do
    @user_champion = user_champions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_champions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_champion" do
    assert_difference('UserChampion.count') do
      post :create, user_champion: { champion_id: @user_champion.champion_id, description: @user_champion.description, photo: @user_champion.photo, skin_id: @user_champion.skin_id, user_id: @user_champion.user_id }
    end

    assert_redirected_to user_champion_path(assigns(:user_champion))
  end

  test "should show user_champion" do
    get :show, id: @user_champion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_champion
    assert_response :success
  end

  test "should update user_champion" do
    patch :update, id: @user_champion, user_champion: { champion_id: @user_champion.champion_id, description: @user_champion.description, photo: @user_champion.photo, skin_id: @user_champion.skin_id, user_id: @user_champion.user_id }
    assert_redirected_to user_champion_path(assigns(:user_champion))
  end

  test "should destroy user_champion" do
    assert_difference('UserChampion.count', -1) do
      delete :destroy, id: @user_champion
    end

    assert_redirected_to user_champions_path
  end
end
