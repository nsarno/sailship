defmodule Marketplace.Router do
  use Marketplace.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Marketplace do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
