from db import run_query_select, run_update_query


def display_all_movies():
    result = run_query_select("""
                              SELECT *
                              FROM movies""")
    return result


def search_movie(query: str):
    result = run_query_select(f"""
                              SELECT *
                              FROM movies
                              WHERE movie_name LIKE '%{query}%'""")
    return result


def insert_movie(movie_name: str, genre: str, country: str, language: str, year: int, revenue: float):
    try:
        run_update_query("""
                         INSERT INTO movies (movie_name, genre, country, language, year, revenue)
                         VALUES (?, ?, ?, ?, ?, ?);""", (movie_name, genre, country, language, year, revenue))
    except Exception as e:
        print(e)
