class Post < ApplicationRecord
  belongs_to :parent, class_name: "Post", required: false
  has_many :children, class_name: "Post", foreign_key: "parent_id"

  def self.leaky_scope
    first.children.to_sql
  end
end
