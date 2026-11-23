from pprint import pprint

from movies_dal import *
from input_types import *


def display_menu():
    print("=" * 5, "MOVIES", "=" * 5)
    print("1. Display all movies",
          "2. Search a movie",
          "3. Add a movie",
          "4. Exit",
          sep="\n")


while True:
    display_menu()
    user_choice = input_int("Enter your choice: ")
    match user_choice:
        case 1:
            result = display_all_movies()
            pprint(result)
        case 2:
            search_query = input("Enter a search query: ")
            result = search_movie(search_query)
            pprint(result)
        case 3:
            movie_name = input("Enter a movie name: ")
            movie_genre = input("Enter a movie genre: ")
            movie_country = input("Enter a movie country: ")
            movie_language = input("Enter a movie language: ")
            movie_year = input_int("Enter a movie year: ")
            movie_revenue = input_float("Enter a movie revenue: ")
            insert_movie(movie_name, movie_genre, movie_country, movie_language, movie_year, movie_revenue)
        case 4:
            exit()
        case _:
            print("Invalid choice")
