class Post < ActiveRecord::Base

  include Sluggable;

  belongs_to :category, counter_cache: true
  has_and_belongs_to_many :tags
  has_many :metas, as: :metaable

  scope :online, -> { where(online: true) }

end
