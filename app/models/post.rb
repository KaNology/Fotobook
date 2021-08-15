class Post < ApplicationRecord
    belongs_to :user, counter_cache: true

    enum sharing_mode: [ :public_mode, :private_mode ]
    has_one_attached :post_image
end
