def select_books_titles_and_years_in_first_series_order_by_year
"SELECT books.title, books.year
FROM books where books.series_id =1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto from characters
  ORDER BY LENGTH(motto) DESC limit 1"
end


def select_value_and_count_of_most_prolific_species
"SELECT characters.species, count(species) FROM characters
group by species
order by count(species) DESC limit 1
"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name from authors
JOIN series on authors.id = series.author_id
JOIN  subgenres on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
JOIN authors on authors.id = series.author_id
JOIN characters on characters.author_id = authors.id
WHERE characters.species = 'human'
GROUP BY title
ORDER BY count(characters.species) DESC
limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.character_id)
FROM characters
JOIN character_books ON character_books.character_id = characters.id
GROUP BY characters.NAME
ORDER BY COUNT(character_books.character_id) DESC"
end
