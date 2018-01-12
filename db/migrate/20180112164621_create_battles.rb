class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.string :result
      t.integer :kill
      t.integer :death
      t.integer :assist
      t.integer :special
      t.integer :weapon_id
      t.string :udemae
      t.integer :stage_id
      t.string :rule
      t.string :user_id

      t.timestamps
    end
  end
end
