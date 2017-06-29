require 'test_helper'

class AbonnementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abonnement = abonnements(:one)
  end

  test "should get index" do
    get abonnements_url
    assert_response :success
  end

  test "should get new" do
    get new_abonnement_url
    assert_response :success
  end

  test "should create abonnement" do
    assert_difference('Abonnement.count') do
      post abonnements_url, params: { abonnement: { dateAbonnement: @abonnement.dateAbonnement, id: @abonnement.id, id_groupePodcast: @abonnement.id_groupePodcast, id_user: @abonnement.id_user } }
    end

    assert_redirected_to abonnement_url(Abonnement.last)
  end

  test "should show abonnement" do
    get abonnement_url(@abonnement)
    assert_response :success
  end

  test "should get edit" do
    get edit_abonnement_url(@abonnement)
    assert_response :success
  end

  test "should update abonnement" do
    patch abonnement_url(@abonnement), params: { abonnement: { dateAbonnement: @abonnement.dateAbonnement, id: @abonnement.id, id_groupePodcast: @abonnement.id_groupePodcast, id_user: @abonnement.id_user } }
    assert_redirected_to abonnement_url(@abonnement)
  end

  test "should destroy abonnement" do
    assert_difference('Abonnement.count', -1) do
      delete abonnement_url(@abonnement)
    end

    assert_redirected_to abonnements_url
  end
end
