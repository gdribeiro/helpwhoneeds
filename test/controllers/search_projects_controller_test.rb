require 'test_helper'

class SearchProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_project = search_projects(:one)
  end

  test "should get index" do
    get search_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_search_project_url
    assert_response :success
  end

  test "should create search_project" do
    assert_difference('SearchProject.count') do
      post search_projects_url, params: { search_project: { keywords: @search_project.keywords, max_amount_asked: @search_project.max_amount_asked, min_amout_asked: @search_project.min_amout_asked, new: @search_project.new, show: @search_project.show, type: @search_project.type, urgent: @search_project.urgent } }
    end

    assert_redirected_to search_project_url(SearchProject.last)
  end

  test "should show search_project" do
    get search_project_url(@search_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_project_url(@search_project)
    assert_response :success
  end

  test "should update search_project" do
    patch search_project_url(@search_project), params: { search_project: { keywords: @search_project.keywords, max_amount_asked: @search_project.max_amount_asked, min_amout_asked: @search_project.min_amout_asked, new: @search_project.new, show: @search_project.show, type: @search_project.type, urgent: @search_project.urgent } }
    assert_redirected_to search_project_url(@search_project)
  end

  test "should destroy search_project" do
    assert_difference('SearchProject.count', -1) do
      delete search_project_url(@search_project)
    end

    assert_redirected_to search_projects_url
  end
end
