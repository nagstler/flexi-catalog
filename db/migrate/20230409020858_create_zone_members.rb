class CreateZoneMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :zone_members do |t|
      t.references :zone, null: false, foreign_key: true
      t.references :zoneable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
