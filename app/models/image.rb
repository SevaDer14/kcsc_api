class Image < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :section, optional: true
  has_one_attached :file
end
