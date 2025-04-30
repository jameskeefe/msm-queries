Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  #get("/directors/youngest", { :controller => "directors", :action = "youngest"})

  #get("/directors/oldest", { :controller => "directors", :action = "oldest"})

  #get("/directors/:id", { :controller => "directors", :action = "bio"})

end
