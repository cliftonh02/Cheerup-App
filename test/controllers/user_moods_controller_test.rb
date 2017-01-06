require 'test_helper'

class UserMoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_mood = user_moods(:one)
  end

  test "should get index" do
    get user_moods_url
    assert_response :success
  end

  test "should get new" do
    get new_user_mood_url
    assert_response :success
  end

  test "should create user_mood" do
    assert_difference('UserMood.count') do
      post user_moods_url, params: { user_mood: { feeling: @user_mood.feeling, mood_id: @user_mood.mood_id, user_id: @user_mood.user_id } }
    end

    assert_redirected_to user_mood_url(UserMood.last)
  end

  test "should show user_mood" do
    get user_mood_url(@user_mood)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_mood_url(@user_mood)
    assert_response :success
  end

  test "should update user_mood" do
    patch user_mood_url(@user_mood), params: { user_mood: { feeling: @user_mood.feeling, mood_id: @user_mood.mood_id, user_id: @user_mood.user_id } }
    assert_redirected_to user_mood_url(@user_mood)
  end

  test "should destroy user_mood" do
    assert_difference('UserMood.count', -1) do
      delete user_mood_url(@user_mood)
    end

    assert_redirected_to user_moods_url
  end
end
