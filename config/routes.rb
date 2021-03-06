Rails.application.routes.draw do



  # Routes for the Sign up resource:
  
  # HOMEPAGE
  get("/", { :controller => "user_authentication", :action => "sign_in_form" })

  # CREATE
  post("/insert_sign_up", { :controller => "sign_ups", :action => "create" })
          
  # READ
  get("/sign_ups", { :controller => "sign_ups", :action => "index" })
  
  get("/sign_ups/:path_id", { :controller => "sign_ups", :action => "show" })
  
  # UPDATE
  
  post("/modify_sign_up/:path_id", { :controller => "sign_ups", :action => "update" })
  
  # DELETE
  get("/delete_sign_up/:path_id", { :controller => "sign_ups", :action => "destroy" })

  #------------------------------

  # Routes for the Status resource:

  # CREATE
  post("/insert_status", { :controller => "statuses", :action => "create" })
          
  # READ
  get("/statuses", { :controller => "statuses", :action => "index" })
  
  get("/statuses/:path_id", { :controller => "statuses", :action => "show" })
  
  # UPDATE
  
  post("/modify_status/:path_id", { :controller => "statuses", :action => "update" })
  
  # DELETE
  get("/delete_status/:path_id", { :controller => "statuses", :action => "destroy" })

  #------------------------------

  # Routes for the Task resource:

  # CREATE
  post("/insert_task", { :controller => "tasks", :action => "create" })
          
  # READ
  get("/tasks", { :controller => "tasks", :action => "index" })
  
  get("/tasks/:path_id", { :controller => "tasks", :action => "show" })
  
  # UPDATE
  
  post("/modify_task/:path_id", { :controller => "tasks", :action => "update" })
  
  # DELETE
  get("/delete_task/:path_id", { :controller => "tasks", :action => "destroy" })

  #------------------------------

  # Routes for the Event resource:

  # CREATE
  post("/insert_event", { :controller => "events", :action => "create" })
          
  # READ
  get("/events", { :controller => "events", :action => "index" })
  
  get("/events/:path_id", { :controller => "events", :action => "show" })
  
  # UPDATE
  
  post("/modify_event/:path_id", { :controller => "events", :action => "update" })
  
  # DELETE
  get("/delete_event/:path_id", { :controller => "events", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
