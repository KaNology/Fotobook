require "application_system_test_case"

class MyProfile::AlbumsTest < ApplicationSystemTestCase
  setup do
    @my_profile_album = my_profile_albums(:one)
  end

  test "visiting the index" do
    visit my_profile_albums_url
    assert_selector "h1", text: "My Profile/Albums"
  end

  test "creating a Album" do
    visit my_profile_albums_url
    click_on "New My Profile/Album"

    fill_in "Title", with: @my_profile_album.title
    click_on "Create Album"

    assert_text "Album was successfully created"
    click_on "Back"
  end

  test "updating a Album" do
    visit my_profile_albums_url
    click_on "Edit", match: :first

    fill_in "Title", with: @my_profile_album.title
    click_on "Update Album"

    assert_text "Album was successfully updated"
    click_on "Back"
  end

  test "destroying a Album" do
    visit my_profile_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album was successfully destroyed"
  end
end
