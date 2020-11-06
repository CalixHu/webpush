defmodule Webpush.MixProject do
  use Mix.Project

  def project do
    [
      app: :webpush,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :test,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 4.0.1"}, # see jose docs for more options here
      {:web_push_encryption, "~> 0.3"}
    ]
  end
end
