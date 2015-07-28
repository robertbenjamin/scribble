class Comments < ActiveRecord::Base
  belongs_to :post, dependent: :destroy
end