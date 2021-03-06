use Mix.Config

config :joken,
  issuer: "Paperwork",
  hs512: [
    signer_alg: "HS512",
    key_octet: "ru4XngBQ/uXZX4o/dTjy3KieL7OHkqeKwGH9KhClVnfpEaRcpw+rNvvSiC66dyiY"
  ]

config :paperwork_service_users, Paperwork.Server,
  adapter: Plug.Cowboy,
  plug: Paperwork,
  scheme: :http,
  port: 8880

config :paperwork_service_users,
  maru_servers: [Paperwork.Server]

config :logger,
  backends: [:console]
