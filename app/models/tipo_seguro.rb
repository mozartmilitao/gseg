class TipoSeguro < ActiveRecord::Base
  attr_accessible :descricao
  validates :descricao, presence: true, uniqueness: true
end
