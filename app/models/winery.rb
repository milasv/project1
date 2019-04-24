class Winery < ApplicationRecord
  belongs_to :region
  has_and_belongs_to_many :varieties

end
