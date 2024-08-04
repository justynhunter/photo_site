defmodule PhotoSite.Repo.Migrations.AddCaption do
  use Ecto.Migration

  def change do
    alter table("photo") do
      add :caption, :text
    end
  end
end
