Rails.application.routes.draw do
  
  get("/square/new", {:controller => "calculations", :action => "square_new"})

  get("/square/results", {:controller => "calculations", :action => "square_results"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_new"})

  get("/square_root/results", {:controller => "calculations", :action => "square_root_results"})


end
