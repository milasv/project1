class Region < ApplicationRecord
  has_many :wineries
  has_and_belongs_to_many :varieties

end
