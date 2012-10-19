class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.string :front
      t.string :back

      t.timestamps
    end
  end
end
