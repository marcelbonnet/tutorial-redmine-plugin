class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :modelo
      t.integer :ano
      t.string :cor
      t.integer :km
    end
  end
end
