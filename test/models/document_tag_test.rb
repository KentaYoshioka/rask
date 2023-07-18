require "test_helper"

class DocumentTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Require document_id and tag_id" do
    document_tag = DocumentTag.new
    assert_not document_tag.save, "Not saving document_tags without document_id and tag_id"
  end

  test "Saving document_tags with document_id and tag_id" do
    document = Document.create(title: "document1")
    tag = Tag.create(name: "tag1")
    document_tag = DocumentTag.new(document_id: document.id, tag_id: tag.id)
    assert document_tag.save, "Saving document_tags with document_id and tag_id"
  end
end
