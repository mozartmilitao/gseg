require 'test_helper'

class SeguradoraTest < ActiveSupport::TestCase
  test "nao deve aceitar seguradora sem nome" do
      seguradora = Seguradora.new
      assert !seguradora.save
  end
  test "nao deve aceitar duas seguradoras com o mesmo nome" do
      seguradora1 = Seguradora.new nome: 'T'
      seguradora2 = Seguradora.new nome: 'T'
      assert seguradora1.save
      assert !seguradora2.save
  end
end
