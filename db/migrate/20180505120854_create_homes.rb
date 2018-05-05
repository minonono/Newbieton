class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|

      t.string :school_name
      t.string :f_major
      t.string :s_major
      t.string :title
      t.text :content
      t.string :current_user_id
      
      t.integer :view_count,default: 0
      
      t.timestamps.local
    end
  end
end