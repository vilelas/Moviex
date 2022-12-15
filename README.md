# Moviex
**Search for a movie or TV show by title**

## Description

Moviex is an application developed in Elixir that uses the OMDB API to fetch and display information about movies. With the help of the OMDB API, the application is able to query data such as title, genre, actors and synopsis of a specific movie and display this information to the user. In summary, Moviex is a useful tool for movie fans who want to get detailed information about their favorite movies.

## How to use

To start this project, you will need to make a clone of the repository. This can be done using the ``git clone`` command, followed by the repository address.

Next, use Elixir's mix command to install the project's dependencies. This command will look for a file called ``mix.exs`` in the project root, which contains information about the dependencies.

To install the dependencies, simply run the following command from the project root:

```elixir
mix deps.get
```

This command will install all the dependencies listed in the ``mix.exs`` file, ensuring that the project can run correctly.

Once the dependencies have been installed, the project is ready to run. To do this, simply use the command ``iex -S mix``. 

Now, to use the main script, just type the following command: 

```elixir
$ iex(1)> OmdbApi.search("movie name")
```

## Execution example

```elixir
$ iex(1)> OmdbApi.search("the social network")
%{
  "Actors" => "Jesse Eisenberg, Andrew Garfield, Justin Timberlake",
  "Awards" => "Won 3 Oscars. 173 wins & 186 nominations total",
  "BoxOffice" => "$96,962,694",
  "Country" => "United States",
  "DVD" => "11 Jan 2011",
  "Director" => "David Fincher",
  "Genre" => "Biography, Drama",
  "Language" => "English, French",
  "Metascore" => "95",
  "Plot" => "As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.",
  "Poster" => "https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg",        
  "Production" => "N/A",
  "Rated" => "PG-13",
  "Ratings" => [
    %{"Source" => "Internet Movie Database", "Value" => "7.8/10"},
    %{"Source" => "Rotten Tomatoes", "Value" => "96%"},
    %{"Source" => "Metacritic", "Value" => "95/100"}
  ],
  "Released" => "01 Oct 2010",
  "Response" => "True",
  "Runtime" => "120 min",
  "Title" => "The Social Network",
  "Type" => "movie",
  "Website" => "N/A",
  "Writer" => "Aaron Sorkin, Ben Mezrich",
  "Year" => "2010",
  "imdbID" => "tt1285016",
  "imdbRating" => "7.8",
  "imdbVotes" => "702,485"
}
```
