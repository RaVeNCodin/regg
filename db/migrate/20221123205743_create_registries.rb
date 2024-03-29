class CreateRegistries < ActiveRecord::Migration[7.0]
  def change
    create_table :registries do |t|
      t.string :name
      t.string :location
      t.belongs_to :participant, null: false, foreign_key: true
      t.belongs_to :coordinator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
