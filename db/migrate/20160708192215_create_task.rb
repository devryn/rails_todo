class CreateTask < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :body
  #    validates :body, presence: true
      t.integer :list_id
      t.index :list_id
      t.boolean :completed
    end
  end
end
