class TagPost < ApplicationRecord
    belongs_to :post
    belongs_to :console
end
