require 'test_helper'

class SkinsControllerTest < ActionController::TestCase
  setup do
    @skin = skins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skin" do
    assert_difference('Skin.count') do
      post :create, skin: { armor: @skin.armor, champion: @skin.champion, difficulty: @skin.difficulty, faction: @skin.faction, gender: @skin.gender, hair_color_string: @skin.hair_color_string, hair_length: @skin.hair_length, name: @skin.name, race: @skin.race, type: @skin.type, wings: @skin.wings }
    end

    assert_redirected_to skin_path(assigns(:skin))
  end

  test "should show skin" do
    get :show, id: @skin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skin
    assert_response :success
  end

  test "should update skin" do
    patch :update, id: @skin, skin: { armor: @skin.armor, champion: @skin.champion, difficulty: @skin.difficulty, faction: @skin.faction, gender: @skin.gender, hair_color_string: @skin.hair_color_string, hair_length: @skin.hair_length, name: @skin.name, race: @skin.race, type: @skin.type, wings: @skin.wings }
    assert_redirected_to skin_path(assigns(:skin))
  end

  test "should destroy skin" do
    assert_difference('Skin.count', -1) do
      delete :destroy, id: @skin
    end

    assert_redirected_to skins_path
  end
end
