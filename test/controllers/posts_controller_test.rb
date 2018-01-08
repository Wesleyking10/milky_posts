require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get posts_all_url
    assert_response :success
  end

end
