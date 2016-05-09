class CreateLandingPageConfigs < ActiveRecord::Migration
  def change
    create_table :landing_page_configs do |t|
      t.string :header
      t.string :description
      t.string :fa_icon

      t.timestamps null: false
    end
  end
end
