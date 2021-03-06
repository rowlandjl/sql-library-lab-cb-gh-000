def select_books_titles_and_years_in_first_series_order_by_year
  "select title, year
  from books
  where series_id = 1
  order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species)
  FROM characters
  GROUP BY species
  ORDER BY count(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, s.name
  FROM authors a
  LEFT JOIN series s2 ON a.id = s2.author_id
  LEFT JOIN subgenres s ON s.id = s2.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT title
  FROM series s
  LEFT JOIN characters c ON s.id = c.series_id
  GROUP BY c.series_id
  ORDER BY species DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, count(c.id)
  FROM characters c
  LEFT JOIN character_books cb ON c.id = cb.character_id
  GROUP BY c.name
  ORDER BY count(name) DESC;"
end
