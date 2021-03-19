desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  require 'faker'

  User.destroy_all

  users = User.all

  20.times do 
      user = User.new 
      user.name = Faker::Name.name
      user.email = "#{user.name}@example.com" 
      user.password = "password"
      user.save
  end

  p "Added #{User.count} users"

  events = ["Group Trip", "Dinner Party", "Work Project"]

  Event.destroy_all
  10.times do 
      event = Event.new 
      event.name = events.sample
      event.user_id = users.sample.id
      event.save 
  end

  p "Added #{Event.count} events" 

  tasks = ["Plan activities", "Book housing", "Buy tickets", "Make grocery list", "Come up with theme", "Buy groceries", "Cook", "Invite people", "Make to-do list", "Assign tasks", "Come up with due dates", "Make presentation"]

  Task.destroy_all 
  30.times do 
      task = Task.new
      task.description = tasks.sample
      task.due_date = Faker::Date.between(from: '2021-04-01', to: '2021-04-30')
      task.user_id = users.sample.id 
      task.event_id = events.sample.id 
      task.status_id = statuses.sample.id 
      task.save
  end
  p "Added #{Task.count} tasks"

  statuses = ["Not Started", "In Progress", "Complete"]

  Status.destroy_all
  30.times do 
      status = Status.new
      status.status = statuses.sample
      status.save
  end

  p "Added #{Status.count} statuses"

  SignUps.destroy_all 
  20.times do 
      sign_up = SignUps.new 
      sign_up.task_id = tasks.sample.id
      sign_up.user_id = users.sample.id
      sign_up.save 
  end

  sign_ups = SignUps.all

  p "Added #{SignUps.count} sign ups"
end
