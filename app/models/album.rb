class Album < ApplicationRecord
    belongs_to :user, counter_cache: true

    enum sharing_mode: [ :public_mode, :private_mode ]
    has_many_attached :album_image
end
