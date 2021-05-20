class CommentSerializer < ActiveModel::UserSerializer
    attributes :username, :user_id, :id, :comment
end