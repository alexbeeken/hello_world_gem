require 'test_helper'

class ValidationTest < ActionDispatch::IntegrationTest
  test 'email validation fails for incorrect email' do
    user = User.create(email: 'invalid@@@example.com')

    assert_equal user.valid?, false
  end

  test 'email validation succeeds for correct email' do
    user = User.create(email: 'valid@example.com')

    assert_equal user.valid?, true
  end
end

