require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "Scopes don't get stuck" do
    Post.create!
    collection = Post.where(read: false)

    refute_includes collection.first.children.to_sql, "read"
    refute_includes collection.leaky_scope, "read"
  end
end
