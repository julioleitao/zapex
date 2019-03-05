defmodule Zapex.Message do
  use Ecto.Schema
  import Ecto.Changeset

  alias Zapex.{
    Message,
    Repo
  }

  schema "messages" do
    field :message, :string
    field :name, :string

    timestamps()
  end

  def list_messages(limit \\ 20), do: Repo.all(Message, limit: limit)

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message])
    |> validate_required([:name, :message])
  end
end
