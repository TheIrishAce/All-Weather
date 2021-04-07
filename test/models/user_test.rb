require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid user" do
    user = User.new(email: 'bobbierossie@gmail.com', password: 'bobross12345')
    assert user.valid?
  end

  test "invalid no email" do
    user = User.new
    assert_not user.save
  end

  test "invalid no password" do
    user = User.new
    assert_not user.save
  end
end
