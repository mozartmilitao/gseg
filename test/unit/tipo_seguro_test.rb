# -*- coding: utf-8 -*-
require 'test_helper'

class TipoSeguroTest < ActiveSupport::TestCase  
  test "não deve aceitar tipo_seguro sem descricao" do
    tipo_seguro = TipoSeguro.new
    assert !tipo_seguro.save
  end
  
  test "não deve aceitar dois tipo_seguro com mesma descricao" do
    tipo_seguro1 = TipoSeguro.new descricao: "T"
    tipo_seguro2 = TipoSeguro.new descricao: "T"
    
    assert tipo_seguro1.save
    assert !tipo_seguro2.save
  end
end
