class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_form
      t.string :short_form

      t.timestamps
    end
  end
end
