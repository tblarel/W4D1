require "application_system_test_case"

class ArtworkSharesTest < ApplicationSystemTestCase
  setup do
    @artwork_share = artwork_shares(:one)
  end

  test "visiting the index" do
    visit artwork_shares_url
    assert_selector "h1", text: "Artwork Shares"
  end

  test "creating a Artwork share" do
    visit artwork_shares_url
    click_on "New Artwork Share"

    click_on "Create Artwork share"

    assert_text "Artwork share was successfully created"
    click_on "Back"
  end

  test "updating a Artwork share" do
    visit artwork_shares_url
    click_on "Edit", match: :first

    click_on "Update Artwork share"

    assert_text "Artwork share was successfully updated"
    click_on "Back"
  end

  test "destroying a Artwork share" do
    visit artwork_shares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artwork share was successfully destroyed"
  end
end
