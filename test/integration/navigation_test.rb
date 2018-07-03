require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test 'hello_world route mounts correctly' do
    get '/hello_world'
    
    assert_response :success
  end

  test 'hello_world displays correct message' do
    get '/hello_world'
    
    assert_select '.hello-world', 'Hello World!'
  end
end

