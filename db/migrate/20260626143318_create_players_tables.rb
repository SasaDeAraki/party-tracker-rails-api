class CreatePlayersTables < ActiveRecord::Migration[8.1]
  def change
    create_join_table :players_tables do |t|
      t.references :player, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end

    add_index :players_tables, [ :player_id, :table_id ], unique: true
  end
end
