class Car < ActiveRecord::Base
  enum rank: [:free, :taxi, :special]
end
