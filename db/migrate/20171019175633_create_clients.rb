class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string 'name'
      t.string 'urn'
      t.string 'vertical'
      t.string 'uuid'
      t.timestamps
    end
  end
end
