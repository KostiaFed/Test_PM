# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  descriprion :string
#  name        :string           not null
#  status      :string           default("new")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :bigint           not null
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#
class Task < ApplicationRecord
  belongs_to :project
end
