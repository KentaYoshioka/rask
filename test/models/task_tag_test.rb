require "test_helper"

class TaskTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Associating tasks with tags" do
    task = Task.create(title: "test_task")
    tag = Tag.create(name: "test_tag")
    task_tag = TaskTag.create(task: task, tag: tag)

    assert_equal task, task_tag.task
    assert_equal tag, task_tag.tag
  end
end
