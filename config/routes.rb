Rails.application.routes.draw do
  get("/", {:controller => "squares", :action => "square"})

  get("/square/new", {:controller => "squares", :action => "square"})

  get("/square/result", {:controller => "squares", :action => "square_result"})

  get("/square_root/new", {:controller => "roots", :action => "root"})

  get("/square_root/result", {:controller => "roots", :action => "root_result"})

end
