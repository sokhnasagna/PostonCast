require 'test_helper'

class GroupePodcastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groupe_podcast = groupe_podcasts(:one)
  end

  test "should get index" do
    get groupe_podcasts_url
    assert_response :success
  end

  test "should get new" do
    get new_groupe_podcast_url
    assert_response :success
  end

  test "should create groupe_podcast" do
    assert_difference('GroupePodcast.count') do
      post groupe_podcasts_url, params: { groupe_podcast: { dateCreation: @groupe_podcast.dateCreation, id_group: @groupe_podcast.id_group, image: @groupe_podcast.image, libelle: @groupe_podcast.libelle } }
    end

    assert_redirected_to groupe_podcast_url(GroupePodcast.last)
  end

  test "should show groupe_podcast" do
    get groupe_podcast_url(@groupe_podcast)
    assert_response :success
  end

  test "should get edit" do
    get edit_groupe_podcast_url(@groupe_podcast)
    assert_response :success
  end

  test "should update groupe_podcast" do
    patch groupe_podcast_url(@groupe_podcast), params: { groupe_podcast: { dateCreation: @groupe_podcast.dateCreation, id_group: @groupe_podcast.id_group, image: @groupe_podcast.image, libelle: @groupe_podcast.libelle } }
    assert_redirected_to groupe_podcast_url(@groupe_podcast)
  end

  test "should destroy groupe_podcast" do
    assert_difference('GroupePodcast.count', -1) do
      delete groupe_podcast_url(@groupe_podcast)
    end

    assert_redirected_to groupe_podcasts_url
  end
end
