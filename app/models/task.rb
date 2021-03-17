# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  description :string
#  due_date    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer
#  status_id   :integer
#  user_id     :integer
#
class Task < ApplicationRecord
  belongs_to :status
  belongs_to :event, counter_cache: true

  has_many  :sign_ups, dependent: :destroy
  has_many :users, through: :sign_ups, source: :user

  validates :due_date, presence: true
  validates :description, presence: true
  validates :description, uniqueness: true
  validates :event_id, presence: true
end
