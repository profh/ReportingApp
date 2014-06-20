require 'test_helper'

class VisitActionsControllerTest < ActionController::TestCase
  setup do
    @visit_action = visit_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visit_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visit_action" do
    assert_difference('VisitAction.count') do
      post :create, visit_action: { entity: @visit_action.entity, page: @visit_action.page, page_title: @visit_action.page_title, referrer_url: @visit_action.referrer_url, server_time: @visit_action.server_time, subject: @visit_action.subject, total_time_on_action: @visit_action.total_time_on_action, url: @visit_action.url, user_id: @visit_action.user_id, visit_id: @visit_action.visit_id }
    end

    assert_redirected_to visit_action_path(assigns(:visit_action))
  end

  test "should show visit_action" do
    get :show, id: @visit_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visit_action
    assert_response :success
  end

  test "should update visit_action" do
    patch :update, id: @visit_action, visit_action: { entity: @visit_action.entity, page: @visit_action.page, page_title: @visit_action.page_title, referrer_url: @visit_action.referrer_url, server_time: @visit_action.server_time, subject: @visit_action.subject, total_time_on_action: @visit_action.total_time_on_action, url: @visit_action.url, user_id: @visit_action.user_id, visit_id: @visit_action.visit_id }
    assert_redirected_to visit_action_path(assigns(:visit_action))
  end

  test "should destroy visit_action" do
    assert_difference('VisitAction.count', -1) do
      delete :destroy, id: @visit_action
    end

    assert_redirected_to visit_actions_path
  end
end
