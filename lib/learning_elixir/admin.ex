defmodule LearningElixir.Admin do
  @moduledoc """
    Admin Module
  """

  use Ecto.Schema
  import Ecto.Changeset

  schema "administrators" do
    field :email, :string
    field :name, :string
    field :passowrd_hash, :string

    timestamps()
  end

  @doc false
  def changeset(admin, attrs) do
    admin
    |> cast(attrs, [:name, :email, :passowrd_hash])
    |> validate_required([:name, :email, :passowrd_hash])
  end
end
