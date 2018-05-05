class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|

      t.string :school_name
      t.string :f_major
      t.string :s_major
      t.string :title
      t.string :content
      
      t.timestamps
    end
  end
end
