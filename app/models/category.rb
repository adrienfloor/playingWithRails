class Category < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :metas, as: :metaable
end
