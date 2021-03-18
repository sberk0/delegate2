class SignUpsController < ApplicationController
  def index
    matching_sign_ups = SignUp.all

    @list_of_sign_ups = matching_sign_ups.order({ :created_at => :desc })

    render({ :template => "sign_ups/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_sign_ups = SignUp.where({ :id => the_id })

    @the_sign_up = matching_sign_ups.at(0)

    render({ :template => "sign_ups/show.html.erb" })
  end

  def create
    the_sign_up = SignUp.new
    the_sign_up.user_id = params.fetch("query_user_id")
    the_sign_up.task_id = params.fetch("query_task_id")

    if the_sign_up.valid?
      the_sign_up.save
      redirect_back({ fallback_location:"/events", notice: "Signed up successfully." })
    else
      redirect_to("/sign_ups", { :notice => "Sign up failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_sign_up = SignUp.where({ :id => the_id }).at(0)

    the_sign_up.user_id = params.fetch("query_user_id")
    the_sign_up.task_id = params.fetch("query_task_id")

    if the_sign_up.valid?
      the_sign_up.save
      redirect_to("/sign_ups/#{the_sign_up.id}", { :notice => "Sign up updated successfully."} )
    else
      redirect_to("/sign_ups/#{the_sign_up.id}", { :alert => "Sign up failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_sign_up = SignUp.where({ :id => the_id }).at(0)

    the_sign_up.destroy

    redirect_to("/sign_ups", { :notice => "Sign up deleted successfully."} )
  end
end
