require "test_helper"

class UserTest < ActiveSupport::TestCase
  self.use_transactional_tests = true
  self.fixture_paths = []

  test "User is created" do
    user = User.new(
      email: "testcase@testingemail.com",
      username: "testname",
      password: "testword",
      password_confirmation: "testword"
    )

    assert user.save
  end
end