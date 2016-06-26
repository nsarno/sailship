defmodule Sailship.UserView do
  use Sailship.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Sailship.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Sailship.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      username: user.username,
      email: user.email,
      password_digest: user.password_digest}
  end
end
