class Item < ActiveRecord::Base
  belongs_to :b_list, dependent: :delete
end
