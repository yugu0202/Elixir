defmodule Webchaserver.Matchs.Match do
  use Ecto.Schema
  import Ecto.Changeset

  schema "matchs" do
    field(:cool_pos, :string)
    field(:hot_pos, :string)
    field(:map, :string)

    timestamps()
  end

  @doc false
  def changeset(match, attrs) do
    match
    |> cast(attrs, [:map, :cool_pos, :hot_pos])
    |> validate_required([:map, :cool_pos, :hot_pos])
  end
end
