class Seguradora < ActiveRecord::Base
  attr_accessible :nome, :susep
  validates :nome, presence: true, uniqueness: true
end
