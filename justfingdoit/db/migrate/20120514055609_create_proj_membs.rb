class CreateProjMembs < ActiveRecord::Migration
  def change
    create_table :proj_membs do |t|
      t.integer :projects_id
      t.integer :members_id
      t.text :details

      t.timestamps
    end
  end
end
