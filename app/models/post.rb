class Post < ApplicationRecord
  has_many :children, class_name: "Post", foreign_key: "parent_id"

  def self.leaky_scope
    first.children.to_sql
  end
end
