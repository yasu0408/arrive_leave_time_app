class CreateReceptions < ActiveRecord::Migration[6.0]
  def change
    create_table :receptions do |t|
      t.string :name
      t.datetime :arrive
      t.datetime :leave

      t.timestamps
    end
  end
end
