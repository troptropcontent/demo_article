class CreateSurfboardCharacteristics < ActiveRecord::Migration[7.0]
  def change
    create_table :surfboard_characteristics do |t|
      t.references :article, null: false, foreign_key: true
      t.string :length
      t.integer :kind
      t.string :dimensions

      t.timestamps
    end
  end
end
