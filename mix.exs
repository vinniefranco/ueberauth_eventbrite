defmodule UeberauthEventbrite.Mixfile do
  use Mix.Project

  @version "0.0.3"
  @url "https://github.com/vinniefranco/ueberauth_eventbrte"

  def project do
    [app: :ueberauth_eventbrite,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp deps do
    [{:ueberauth, "~> 0.6"},
      {:oauth2, "~> 1.0"},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false}]
  end

  defp description do
    "An Ueberauth strategy for Eventbrite OAuth2 authentication"
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Vincent Franco"],
     licenses: ["MIT"],
     links: %{ "Github": @url }]
  end
end
