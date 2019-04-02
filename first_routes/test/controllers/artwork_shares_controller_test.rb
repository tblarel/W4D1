require 'test_helper'

class ArtworkSharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork_share = artwork_shares(:one)
  end

  test "should get index" do
    get artwork_shares_url
    assert_response :success
  end

  test "should get new" do
    get new_artwork_share_url
    assert_response :success
  end

  test "should create artwork_share" do
    assert_difference('ArtworkShare.count') do
      post artwork_shares_url, params: { artwork_share: {  } }
    end

    assert_redirected_to artwork_share_url(ArtworkShare.last)
  end

  test "should show artwork_share" do
    get artwork_share_url(@artwork_share)
    assert_response :success
  end

  test "should get edit" do
    get edit_artwork_share_url(@artwork_share)
    assert_response :success
  end

  test "should update artwork_share" do
    patch artwork_share_url(@artwork_share), params: { artwork_share: {  } }
    assert_redirected_to artwork_share_url(@artwork_share)
  end

  test "should destroy artwork_share" do
    assert_difference('ArtworkShare.count', -1) do
      delete artwork_share_url(@artwork_share)
    end

    assert_redirected_to artwork_shares_url
  end
end
