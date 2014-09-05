class CreatePhysicalAbuses < ActiveRecord::Migration
  def change
    create_table :physical_abuses do |t|
      t.boolean :broken_bone
      t.boolean :bruise_cuts
      t.boolean :head_injury_trauma
      t.boolean :internal_injury
      t.boolean :scald_burn
      t.boolean :critically_injured
      t.boolean :death
      t.string :other
      t.string :substantiated
      t.references :user, index: true

      t.timestamps
    end
  end
end
