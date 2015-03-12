class Shirt < ActiveRecord::Base
  has_many  :purchases
  belongs_to  :designer, class_name: "User"
end
