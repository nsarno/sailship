ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Sailship.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Sailship.Repo --quiet)
Ecto.Adapters.SQL.Sandbox.mode(Sailship.Repo, :manual)
