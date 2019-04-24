class Variety < ApplicationRecord
  has_and_belongs_to_many :regions
  has_and_belongs_to_many :wineries
end
