require 'test_helper'

class TaskEntryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_entry_index_url
    assert_response :success
  end

end
