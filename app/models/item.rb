class Item < ApplicationRecord
      # dependent: :destroy will destroy all associated items if the department is destroyed
      belongs_to :department
end
