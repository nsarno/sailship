ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Marketplace.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Marketplace.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Marketplace.Repo)

