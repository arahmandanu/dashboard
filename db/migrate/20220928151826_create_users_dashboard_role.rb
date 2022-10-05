class CreateUsersDashboardRole < ActiveRecord::Migration[7.0]
  def change
    create_table :users_dashboard_roles do |t|
      t.integer     :users_dashboard_id
      t.boolean     :can_manage_user_dashboard, null: false, default: false
      t.boolean     :can_manage_user_dashboard_role, null: false, default: false
      t.boolean     :can_show, null: false, default: false
      t.boolean     :can_edit, null: false, default: false
      t.boolean     :can_delete, null: false, default: false
      t.boolean     :can_create, null: false, default: false
      t.boolean     :can_sync, null: false, default: false
      t.boolean     :can_export, null: false, default: false

      t.timestamps
    end

    add_index :users_dashboard_roles, [:users_dashboard_id], unique: true
    add_foreign_key :users_dashboard_roles, :users_dashboards, column: :users_dashboard_id
  end
end
