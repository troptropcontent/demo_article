class CreateBikeCharacteristics < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_characteristics do |t|
      t.references :article, null: false, foreign_key: true
      t.integer :kind
      t.integer :break_type

      t.timestamps
    end
  end
end
