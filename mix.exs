defmodule Todo.Mixfile do
  use Mix.Project

  def project do
    [app: :todo,
      version: "0.1.0",
      elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
      deps: deps()]
  end

  def application do
    [
      applications: [:logger, :gproc],
      mod: {Todo.Application, []}
    ]
  end

  defp deps do
    [
      {:gproc, "0.6.1"},
      {:meck, "0.8.4", only: :test}
    ]
  end
end
