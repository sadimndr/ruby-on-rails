class CreateRailsblogs < ActiveRecord::Migration[7.0]
  def change
    create_table :railsblogs do |t|
      t.string :title
      t.binary :upload
      t.text :description

      t.timestamps
    end
  end
end
