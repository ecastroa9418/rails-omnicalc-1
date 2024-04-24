Rails.application.routes.draw do
  
  get("/square/new", {:controller => "square", :action => "new"})

  get("/square/results", {:controller => "square", :action => "results"})

  
end
