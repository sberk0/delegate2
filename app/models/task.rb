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
end
