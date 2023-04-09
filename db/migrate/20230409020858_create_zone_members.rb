class CreateZoneMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :zone_members do |t|
      t.references :zone, foreign_key: true
      t.references :zoneable, polymorphic: true

      t.timestamps
    end
  end
end
