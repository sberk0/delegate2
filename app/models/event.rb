# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  tasks_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  has_many  :tasks, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
