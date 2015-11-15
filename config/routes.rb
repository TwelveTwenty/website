Website::Application.routes.draw do
  # match "*path" => redirect("/")
  root to: "apps#show", app: "uberlayer"
end
