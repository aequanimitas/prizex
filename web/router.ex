defmodule Prizex.Router do
  use Prizex.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Prizex do
    pipe_through :browser # Use the default browser stack

    get "/rewards/:id", RewardController, :show
    get "/rewards", RewardController, :index
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Prizex do
  #   pipe_through :api
  # end
end
