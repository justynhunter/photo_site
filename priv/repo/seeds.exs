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

  photo1 = %Photo{
    album_id: default_album.id,
    seq: 1,
    src: "https://photos.justynhunter.com/progress-of-man-1.webp",
    alt: "rotting house",
    caption: "Alabama - 2024"
  }

  photo2 = %Photo{
    album_id: default_album.id,
    seq: 2,
    src: "https://photos.justynhunter.com/progress-of-man-2.webp",
    alt: "chimney",
    caption: "Shaw, Mississippi - 2023"
  }

  photo3 = %Photo{
    album_id: default_album.id,
    seq: 3,
    src: "https://photos.justynhunter.com/progress-of-man-3.webp",
    alt: "rotting house",
    caption: "Lawrenceburg, Tennessee - 2023"
  }

  photo4 = %Photo{
    album_id: default_album.id,
    seq: 4,
    src: "https://photos.justynhunter.com/progress-of-man-4.webp",
    alt: "rotting house",
    caption: "Alabama - 2024"
  }

  photo5 = %Photo{
    album_id: default_album.id,
    seq: 5,
    src: "https://photos.justynhunter.com/progress-of-man-5.webp",
    alt: "rotting house",
    caption: "Alabama - 2024"
  }

  photo6 = %Photo{
    album_id: default_album.id,
    seq: 6,
    src: "https://photos.justynhunter.com/progress-of-man-6.webp",
    alt: "rotting house",
    caption: "Alabama - 2024"
  }

  photo7 = %Photo{
    album_id: default_album.id,
    seq: 7,
    src: "https://photos.justynhunter.com/progress-of-man-7.webp",
    alt: "rotting house",
    caption: "Mississippi - 2023"
  }

  photo8 = %Photo{
    album_id: default_album.id,
    seq: 8,
    src: "https://photos.justynhunter.com/progress-of-man-8.webp",
    alt: "rotting house",
    caption: "Guthrie, Kentucky - 2023"
  }

  photo9 = %Photo{
    album_id: default_album.id,
    seq: 9,
    src: "https://photos.justynhunter.com/progress-of-man-9.webp",
    alt: "rotting house",
    caption: "Ashland City, Tennessee - 2024"
  }

  photo10 = %Photo{
    album_id: default_album.id,
    seq: 10,
    src: "https://photos.justynhunter.com/progress-of-man-10.webp",
    alt: "rotting house",
    caption: "Lexington, Tennessee - 2023"
  }

  photo11 = %Photo{
    album_id: default_album.id,
    seq: 11,
    src: "https://photos.justynhunter.com/progress-of-man-11.webp",
    alt: "rotting house",
    caption: "Jackson, Tennessee - 2023"
  }

  photo12 = %Photo{
    album_id: default_album.id,
    seq: 12,
    src: "https://photos.justynhunter.com/progress-of-man-12.webp",
    alt: "rotting house",
    caption: "Alabama - 2024"
  }

  photo13 = %Photo{
    album_id: default_album.id,
    seq: 13,
    src: "https://photos.justynhunter.com/progress-of-man-13.webp",
    alt: "rotting house",
    caption: "Tennessee - 2023"
  }

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

  default_album = %Album{
    name: "wildlife",
    slug: "wildlife",
    seq: 2,
    description: "kentucky wildlife museum"
  }

  {_, default_album} = Repo.insert(default_album)

  photo1 = %Photo{
    album_id: default_album.id,
    seq: 1,
    src: "https://photos.justynhunter.com/wildlife-1.webp",
    alt: "ram",
    caption: "Bighorn Sheep"
  }

  photo2 = %Photo{
    album_id: default_album.id,
    seq: 2,
    src: "https://photos.justynhunter.com/wildlife-2.webp",
    alt: "butterflys",
    caption: "Butterflies"
  }

  photo3 = %Photo{
    album_id: default_album.id,
    seq: 3,
    src: "https://photos.justynhunter.com/wildlife-3.webp",
    alt: "penguins",
    caption: "Penguins"
  }

  photo4 = %Photo{
    album_id: default_album.id,
    seq: 4,
    src: "https://photos.justynhunter.com/wildlife-4.webp",
    alt: "weasel",
    caption: "Otter and wolverine"
  }

  photo5 = %Photo{
    album_id: default_album.id,
    seq: 5,
    src: "https://photos.justynhunter.com/wildlife-5.webp",
    alt: "insects",
    caption: "Insect Case"
  }

  photo6 = %Photo{
    album_id: default_album.id,
    seq: 6,
    src: "https://photos.justynhunter.com/wildlife-6.webp",
    alt: "buffalo",
    caption: "Bison"
  }

  photo7 = %Photo{
    album_id: default_album.id,
    seq: 7,
    src: "https://photos.justynhunter.com/wildlife-7.webp",
    alt: "birds",
    caption: "Birds"
  }

  photo8 = %Photo{
    album_id: default_album.id,
    seq: 8,
    src: "https://photos.justynhunter.com/wildlife-8.webp",
    alt: "bears",
    caption: "Black Bears"
  }

  photo9 = %Photo{
    album_id: default_album.id,
    seq: 9,
    src: "https://photos.justynhunter.com/wildlife-9.webp",
    alt: "lion",
    caption: "Ocelot and Lion"
  }

  photo10 = %Photo{
    album_id: default_album.id,
    seq: 10,
    src: "https://photos.justynhunter.com/wildlife-10.webp",
    alt: "badger",
    caption: "Badger"
  }

  photo11 = %Photo{
    album_id: default_album.id,
    seq: 11,
    src: "https://photos.justynhunter.com/wildlife-11.webp",
    alt: "snakes",
    caption: "Snake"
  }

  photo12 = %Photo{
    album_id: default_album.id,
    seq: 12,
    src: "https://photos.justynhunter.com/wildlife-12.webp",
    alt: "snake",
    caption: "Snake"
  }

  photo13 = %Photo{
    album_id: default_album.id,
    seq: 13,
    src: "https://photos.justynhunter.com/wildlife-13.webp",
    alt: "butterflys",
    caption: "Butterfly Case"
  }

  photo14 = %Photo{
    album_id: default_album.id,
    seq: 14,
    src: "https://photos.justynhunter.com/wildlife-14.webp",
    alt: "beaver",
    caption: "Possum"
  }

  photo15 = %Photo{
    album_id: default_album.id,
    seq: 15,
    src: "https://photos.justynhunter.com/wildlife-15.webp",
    alt: "peacock",
    caption: "Peacock"
  }

  photo16 = %Photo{
    album_id: default_album.id,
    seq: 16,
    src: "https://photos.justynhunter.com/wildlife-16.webp",
    alt: "antelope",
    caption: "Mule Deer"
  }

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

  photo1 = %Photo{
    album_id: default_album.id,
    seq: 1,
    src: "https://photos.justynhunter.com/church-1.webp",
    alt: "church",
    caption: "Clayborne Chapel AME - Williamsport, Tennessee - 2022"
  }

  photo2 = %Photo{
    album_id: default_album.id,
    seq: 2,
    src: "https://photos.justynhunter.com/church-2.webp",
    alt: "church",
    caption: "Church - Guthrie, Kentucky - 2022"
  }

  photo3 = %Photo{
    album_id: default_album.id,
    seq: 3,
    src: "https://photos.justynhunter.com/church-3.webp",
    alt: "church",
    caption: "King's ChapeL - Murfreesboro, Tennessee - 2021"
  }

  photo4 = %Photo{
    album_id: default_album.id,
    seq: 4,
    src: "https://photos.justynhunter.com/church-4.webp",
    alt: "church",
    caption: "Leipers Fork Primitive Baptist Church - Liepers Fork, Tennessee - 2021"
  }

  photo5 = %Photo{
    album_id: default_album.id,
    seq: 5,
    src: "https://photos.justynhunter.com/church-5.webp",
    alt: "church",
    caption: "7th Street Church - Bell Buckle, Tennessee - 2021"
  }

  photo6 = %Photo{
    album_id: default_album.id,
    seq: 6,
    src: "https://photos.justynhunter.com/church-6.webp"
  }

  photo7 = %Photo{
    album_id: default_album.id,
    seq: 7,
    src: "https://photos.justynhunter.com/church-7.webp",
    alt: "church"
  }

  photo8 = %Photo{
    album_id: default_album.id,
    seq: 8,
    src: "https://photos.justynhunter.com/church-8.webp",
    alt: "church",
    caption: "New Bethel AME Chuch - Murfreesboro, Tennessee - 2021"
  }

  photo9 = %Photo{
    album_id: default_album.id,
    seq: 9,
    src: "https://photos.justynhunter.com/church-9.webp",
    alt: "church",
    caption: "Church of Christ at Leipers Form - Leipers Fork, Tennessee - 2021"
  }

  photo10 = %Photo{
    album_id: default_album.id,
    seq: 10,
    src: "https://photos.justynhunter.com/church-10.webp",
    alt: "church",
    caption: "Little Hurricane Primitive Baptist Church - Manchester,
Tennessee - 2021"
  }

  photo11 = %Photo{
    album_id: default_album.id,
    seq: 11,
    src: "https://photos.justynhunter.com/church-11.webp",
    alt: "church",
  }

  photo12 = %Photo{
    album_id: default_album.id,
    seq: 12,
    src: "https://photos.justynhunter.com/church-12.webp",
    alt: "church",
    caption: "Eureka Curch of Christ - Warren County,
Tennessee - 2021"
  }

  photo13 = %Photo{
    album_id: default_album.id,
    seq: 13,
    src: "https://photos.justynhunter.com/church-13.webp",
    alt: "church",
    caption: "Christian Pentacosal Church - Nashville,
Tennessee - 2021"
  }

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
