use Mix.Config

config :hello, Hello.Repo,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true,
  show_sensitive_data_on_connection_error: false,
  prepare: :unnamed,
  queue_target: 5_000,
  queue_interval: 100_000
