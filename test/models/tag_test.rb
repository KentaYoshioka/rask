require "test_helper"

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Create tags" do
    tag = Tag.new(name: "test_tag")
    assert tag.save
  end

  test "Require tag_name" do
    tag = Tag.new
    assert_not tag.save, "Not saving tags without tag_name"
  end
end
