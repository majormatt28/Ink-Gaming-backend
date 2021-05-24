class CommentSerializer < ActiveModel::Serializer
    attributes :user_id, :id, :comment, :post_id
end