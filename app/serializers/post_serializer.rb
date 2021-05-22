class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :link, :media_type, :user_id

    # has_many :comment
end