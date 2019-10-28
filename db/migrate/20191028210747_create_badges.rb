class CreateBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :badges do |t|
      t.string :badge_id
      t.string :badge_template_id
      t.string :issued_to
      t.string :recipient_email

      t.timestamps
    end
  end
end
