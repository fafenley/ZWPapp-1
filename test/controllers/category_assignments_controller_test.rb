require 'test_helper'

class CategoryAssignmentsControllerTest < ActionController::TestCase
  setup do
    @category_assignment = category_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_assignment" do
    assert_difference('CategoryAssignment.count') do
      post :create, category_assignment: { categoryID: @category_assignment.categoryID, tagID: @category_assignment.tagID }
    end

    assert_redirected_to category_assignment_path(assigns(:category_assignment))
  end

  test "should show category_assignment" do
    get :show, id: @category_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_assignment
    assert_response :success
  end

  test "should update category_assignment" do
    patch :update, id: @category_assignment, category_assignment: { categoryID: @category_assignment.categoryID, tagID: @category_assignment.tagID }
    assert_redirected_to category_assignment_path(assigns(:category_assignment))
  end

  test "should destroy category_assignment" do
    assert_difference('CategoryAssignment.count', -1) do
      delete :destroy, id: @category_assignment
    end

    assert_redirected_to category_assignments_path
  end
end
