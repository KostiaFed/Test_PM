# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  descriprion :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
end
