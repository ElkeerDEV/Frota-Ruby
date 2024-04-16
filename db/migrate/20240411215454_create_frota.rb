class CreateFrota < ActiveRecord::Migration[7.1]
  def change
    create_table :frota do |t|
      t.string :veiculo
      t.string :placa
      t.string :km_inicial
      t.string :hora_saida
      t.string :km_final
      t.string :hora_entrada
      t.string :condutor
      t.string :data

      t.timestamps
    end
  end
end
