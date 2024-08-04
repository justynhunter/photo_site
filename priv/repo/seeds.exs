# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhotoSite.Repo.insert!(%PhotoSite.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhotoSite.Repo
alias PhotoSite.Album
alias PhotoSite.Photo

unless Repo.exists?(Album) do
  default_album = %Album{
    name: "the progress of man",
    slug: "the-progress-of-man",
    seq: 1,
    description: "photos of human made structures decaying or being reclaimed by nature"
 }

  {_, default_album} = Repo.insert(default_album)

  photo1 = %Photo{album_id: default_album.id, seq: 1, src: "https://photos.justynhunter.com/progress-of-man-1.webp", alt: "rotting house"}
  photo2 = %Photo{album_id: default_album.id, seq: 2, src: "https://photos.justynhunter.com/progress-of-man-2.webp", alt: "chimney"}
  photo3 = %Photo{album_id: default_album.id, seq: 3, src: "https://photos.justynhunter.com/progress-of-man-3.webp", alt: "rotting house"}
  photo4 = %Photo{album_id: default_album.id, seq: 4, src: "https://photos.justynhunter.com/progress-of-man-4.webp", alt: "rotting house"}
  photo5 = %Photo{album_id: default_album.id, seq: 5, src: "https://photos.justynhunter.com/progress-of-man-5.webp", alt: "rotting house"}
  photo6 = %Photo{album_id: default_album.id, seq: 6, src: "https://photos.justynhunter.com/progress-of-man-6.webp", alt: "rotting house"}
  photo7 = %Photo{album_id: default_album.id, seq: 7, src: "https://photos.justynhunter.com/progress-of-man-7.webp", alt: "rotting house"}
  photo8 = %Photo{album_id: default_album.id, seq: 8, src: "https://photos.justynhunter.com/progress-of-man-8.webp", alt: "rotting house"}
  photo9 = %Photo{album_id: default_album.id, seq: 9, src: "https://photos.justynhunter.com/progress-of-man-9.webp", alt: "rotting house"}
  photo10 = %Photo{album_id: default_album.id, seq: 10, src: "https://photos.justynhunter.com/progress-of-man-10.webp", alt: "rotting house"}
  photo11 = %Photo{album_id: default_album.id, seq: 11, src: "https://photos.justynhunter.com/progress-of-man-11.webp", alt: "rotting house"}
  photo12 = %Photo{album_id: default_album.id, seq: 12, src: "https://photos.justynhunter.com/progress-of-man-12.webp", alt: "rotting house"}
  photo13 = %Photo{album_id: default_album.id, seq: 13, src: "https://photos.justynhunter.com/progress-of-man-13.webp", alt: "rotting house"}

  Repo.insert(photo1)
  Repo.insert(photo2)
  Repo.insert(photo3)
  Repo.insert(photo4)
  Repo.insert(photo5)
  Repo.insert(photo6)
  Repo.insert(photo7)
  Repo.insert(photo8)
  Repo.insert(photo9)
  Repo.insert(photo10)
  Repo.insert(photo11)
  Repo.insert(photo12)
  Repo.insert(photo13)

  default_album = %Album{name: "wildlife", slug: "wildlife", seq: 2, description: "kentucky wildlife museum"}
  {_, default_album} = Repo.insert(default_album)

  photo1 = %Photo{album_id: default_album.id, seq: 1, src: "https://photos.justynhunter.com/wildlife-1.webp", alt: "ram"}
  photo2 = %Photo{album_id: default_album.id, seq: 2, src: "https://photos.justynhunter.com/wildlife-2.webp", alt: "butterflys"}
  photo3 = %Photo{album_id: default_album.id, seq: 3, src: "https://photos.justynhunter.com/wildlife-3.webp", alt: "penguins"}
  photo4 = %Photo{album_id: default_album.id, seq: 4, src: "https://photos.justynhunter.com/wildlife-4.webp", alt: "weasel"}
  photo5 = %Photo{album_id: default_album.id, seq: 5, src: "https://photos.justynhunter.com/wildlife-5.webp", alt: "insects"}
  photo6 = %Photo{album_id: default_album.id, seq: 6, src: "https://photos.justynhunter.com/wildlife-6.webp", alt: "buffalo"}
  photo7 = %Photo{album_id: default_album.id, seq: 7, src: "https://photos.justynhunter.com/wildlife-7.webp", alt: "birds"}
  photo8 = %Photo{album_id: default_album.id, seq: 8, src: "https://photos.justynhunter.com/wildlife-8.webp", alt: "bears"}
  photo9 = %Photo{album_id: default_album.id, seq: 9, src: "https://photos.justynhunter.com/wildlife-9.webp", alt: "lion"}
  photo10 = %Photo{album_id: default_album.id, seq: 10, src: "https://photos.justynhunter.com/wildlife-10.webp", alt: "badger"}
  photo11 = %Photo{album_id: default_album.id, seq: 11, src: "https://photos.justynhunter.com/wildlife-11.webp", alt: "snakes"}
  photo12 = %Photo{album_id: default_album.id, seq: 12, src: "https://photos.justynhunter.com/wildlife-12.webp", alt: "snake"}
  photo13 = %Photo{album_id: default_album.id, seq: 13, src: "https://photos.justynhunter.com/wildlife-13.webp", alt: "butterflys"}
  photo14 = %Photo{album_id: default_album.id, seq: 14, src: "https://photos.justynhunter.com/wildlife-14.webp", alt: "beaver"}
  photo15 = %Photo{album_id: default_album.id, seq: 15, src: "https://photos.justynhunter.com/wildlife-15.webp", alt: "peacock"}
  photo16 = %Photo{album_id: default_album.id, seq: 16, src: "https://photos.justynhunter.com/wildlife-16.webp", alt: "antelope"}

  Repo.insert(photo1)
  Repo.insert(photo2)
  Repo.insert(photo3)
  Repo.insert(photo4)
  Repo.insert(photo5)
  Repo.insert(photo6)
  Repo.insert(photo7)
  Repo.insert(photo8)
  Repo.insert(photo9)
  Repo.insert(photo10)
  Repo.insert(photo11)
  Repo.insert(photo12)
  Repo.insert(photo13)
  Repo.insert(photo14)
  Repo.insert(photo15)
  Repo.insert(photo16)

  default_album = %Album{
    name: "selected churches",
    slug: "selected-churches",
    seq: 3,
    description: "a selection of rural churches"
  }

  {_, default_album} = Repo.insert(default_album)

  photo1 = %Photo{album_id: default_album.id, seq: 1, src: "https://photos.justynhunter.com/church-1.webp", alt: "church"}
  photo2 = %Photo{album_id: default_album.id, seq: 2, src: "https://photos.justynhunter.com/church-2.webp", alt: "church"}
  photo3 = %Photo{album_id: default_album.id, seq: 3, src: "https://photos.justynhunter.com/church-3.webp", alt: "church"}
  photo4 = %Photo{album_id: default_album.id, seq: 4, src: "https://photos.justynhunter.com/church-4.webp", alt: "church"}
  photo5 = %Photo{album_id: default_album.id, seq: 5, src: "https://photos.justynhunter.com/church-5.webp", alt: "church"}
  photo6 = %Photo{album_id: default_album.id, seq: 6, src: "https://photos.justynhunter.com/church-6.webp", alt: "church"}
  photo7 = %Photo{album_id: default_album.id, seq: 7, src: "https://photos.justynhunter.com/church-7.webp", alt: "church"}
  photo8 = %Photo{album_id: default_album.id, seq: 8, src: "https://photos.justynhunter.com/church-8.webp", alt: "church"}
  photo9 = %Photo{album_id: default_album.id, seq: 9, src: "https://photos.justynhunter.com/church-9.webp", alt: "church"}
  photo10 = %Photo{album_id: default_album.id, seq: 10, src: "https://photos.justynhunter.com/church-10.webp", alt: "church"}
  photo11 = %Photo{album_id: default_album.id, seq: 11, src: "https://photos.justynhunter.com/church-11.webp", alt: "church"}
  photo12 = %Photo{album_id: default_album.id, seq: 12, src: "https://photos.justynhunter.com/church-12.webp", alt: "church"}
  photo13 = %Photo{album_id: default_album.id, seq: 13, src: "https://photos.justynhunter.com/church-13.webp", alt: "church"}

  Repo.insert(photo1)
  Repo.insert(photo2)
  Repo.insert(photo3)
  Repo.insert(photo4)
  Repo.insert(photo5)
  Repo.insert(photo6)
  Repo.insert(photo7)
  Repo.insert(photo8)
  Repo.insert(photo9)
  Repo.insert(photo10)
  Repo.insert(photo11)
  Repo.insert(photo12)
  Repo.insert(photo13)
else
  IO.puts("nothing to seed")
end
