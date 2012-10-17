class CreateSeguradoras < ActiveRecord::Migration
  def change
    create_table :seguradoras do |t|
      t.string :nome
      t.string :susep

      t.timestamps
    end  
  end
end
