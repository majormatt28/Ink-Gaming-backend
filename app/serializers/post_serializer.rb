class PostSerializer < ActiveModel::Serializer
    attributes :id, :content, :video_url, :img_url, :user_id

    # has_many :comments
end