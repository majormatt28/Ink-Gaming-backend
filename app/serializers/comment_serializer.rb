class CommentSerializer < ActiveModel::Serializer
    attributes :user_id, :id, :comments
end