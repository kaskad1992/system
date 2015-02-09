require 'test_helper'

class ElectionCommitteesControllerTest < ActionController::TestCase
  setup do
    @election_committee = election_committees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:election_committees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create election_committee" do
    assert_difference('ElectionCommittee.count') do
      post :create, election_committee: { name: @election_committee.name }
    end

    assert_redirected_to election_committee_path(assigns(:election_committee))
  end

  test "should show election_committee" do
    get :show, id: @election_committee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @election_committee
    assert_response :success
  end

  test "should update election_committee" do
    patch :update, id: @election_committee, election_committee: { name: @election_committee.name }
    assert_redirected_to election_committee_path(assigns(:election_committee))
  end

  test "should destroy election_committee" do
    assert_difference('ElectionCommittee.count', -1) do
      delete :destroy, id: @election_committee
    end

    assert_redirected_to election_committees_path
  end
end
