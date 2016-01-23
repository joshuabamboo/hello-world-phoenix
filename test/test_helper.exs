ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HelloWorldPhoenix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HelloWorldPhoenix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HelloWorldPhoenix.Repo)

