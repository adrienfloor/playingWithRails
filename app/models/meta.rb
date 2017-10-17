class Meta < ActiveRecord::Base
  belongs_to :metaable, polymorphic: true
end
