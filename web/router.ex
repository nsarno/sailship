defmodule Sailship.Router do
  use Sailship.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Sailship do
    pipe_through :api
  end
end
