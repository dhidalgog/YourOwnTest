require 'test_helper'

class StudentAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_answers_new_url
    assert_response :success
  end

  test "should get create" do
    get student_answers_create_url
    assert_response :success
  end

end
