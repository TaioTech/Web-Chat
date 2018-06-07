defmodule ChatWeb.Router do
  use ChatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ChatWeb do
    # Use the default browser
    pipe_through(:browser)

    get("/", PageController, :index)
  end

  # Not using API right now so comment out
  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  # scope "/", ChatWeb do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  # scope "/api", ChatWeb do
  #   pipe_through :api
  # end
end
