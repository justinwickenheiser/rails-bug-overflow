class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :issue_type, default: 'Feature'
      t.string :priority, default: 'Medium'
      t.string :status, default: 'Open'

      t.timestamps
    end
  end
end
