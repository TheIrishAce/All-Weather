require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid comment" do
    comment = Comment.new(blogpost_id: 1, message: 'Test blogpost 01')
    assert comment.valid?
  end

  #invalid tests, missing a required parameter.
  test "invalid comment" do
    comment = Comment.new()
    assert_not comment.save
  end

  test "invalid comment blogpost id" do
    comment = Comment.new(message: 'Test blogpost 01')
    assert_not comment.save
  end

  test "invalid comment message" do
    comment = Comment.new(blogpost_id: 1)
    assert_not comment.save
  end

  #validation tests, minimum input tests.
  test "to short comment message" do
    comment = Comment.new(blogpost_id: 1, message: 'Test')
    assert_not comment.save
  end
end
