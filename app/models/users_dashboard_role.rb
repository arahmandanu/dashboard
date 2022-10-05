class UsersDashboardRole < ApplicationRecord
  belongs_to :users_dashboard
  validates :users_dashboard_id, uniqueness: true
end
