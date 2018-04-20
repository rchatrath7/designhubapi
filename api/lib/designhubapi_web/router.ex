defmodule DesignhubapiWeb.Router do
  use DesignhubapiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DesignhubapiWeb do
    pipe_through :api
    
    resources "/users", UserController
  end
end
