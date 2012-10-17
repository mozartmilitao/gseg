class CreateTipoSeguros < ActiveRecord::Migration
  def change
    create_table :tipo_seguros do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
