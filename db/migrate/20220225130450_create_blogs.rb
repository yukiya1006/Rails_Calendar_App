class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :menu
	    t.integer :set
	    t.integer :weight
	    t.integer :rep
	    t.datetime :start_time
	    t.integer :body_weight
      t.timestamps
    end
  end
end
