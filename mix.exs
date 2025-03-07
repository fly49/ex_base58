defmodule ExBase58.MixProject do
  use Mix.Project

  @source_url "https://github.com/ayrat555/ex_base58"

  def project do
    [
      app: :ex_base58,
      version: "0.3.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:rustler, "~> 0.24"}
    ]
  end

  defp description do
    """
    Nif for Base58 format encoding and decoding.
    """
  end

  defp package do
    [
      name: :ex_base58,
      maintainers: ["Ayrat Badykov"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url
      },
      files: [
        "lib",
        "native/exbase58/.cargo",
        "native/exbase58/src",
        "native/exbase58/Cargo.toml",
        "native/exbase58/Cargo.lock",
        "mix.exs",
        "README.md",
        "LICENSE"
      ]
    ]
  end
end
