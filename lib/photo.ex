defmodule PhotoSite.Photo do
  use Ecto.Schema

  schema "photo" do
    field :seq, :integer
    field :src, :string
    field :alt, :string
    field :caption, :string
    field :created_at, :utc_datetime
    belongs_to :album, PhotoSite.Album
  end
end
