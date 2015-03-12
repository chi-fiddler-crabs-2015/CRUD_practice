class User < ActiveRecord::Base
  has_many  :purchases, foreign_key: :purchaser_id
  has_many  :shirts, foreign_key: :designer_id
end
