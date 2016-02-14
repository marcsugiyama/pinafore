ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Pinafore.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Pinafore.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Pinafore.Repo)

