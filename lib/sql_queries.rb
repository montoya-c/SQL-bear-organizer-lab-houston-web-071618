def selects_all_female_bears_return_name_and_age
 <<-SQL
 SELECT name, age FROM bears
 WHERE gender = 'F';
  SQL
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  <<-SQL
  SELECT name FROM bears ORDER BY name ASC
  SQL
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  <<-SQL
  SELECT name, age FROM bears WHERE alive = 1 ORDER BY age ASC
  SQL
end

def selects_oldest_bear_and_returns_name_and_age
<<-SQL
SELECT name, age FROM bears ORDER BY age DESC LIMIT 1
SQL
end

def select_youngest_bear_and_returns_name_and_age
  <<-SQL
  SELECT name, age FROM bears ORDER BY age ASC LIMIT 1
  SQL
end

def selects_most_prominent_color_and_returns_with_count
  <<-SQL
  SELECT bears.color, COUNT(bears.color) FROM bears GROUP BY bears.color ORDER BY COUNT(*) DESC LIMIT 1
SQL
end

def counts_number_of_bears_with_goofy_temperaments
  <<-SQL
  SELECT COUNT(bears.temperament) FROM bears WHERE bears.temperament='goofy'
  SQL
end

def selects_bear_that_killed_Tim
  <<-SQL
  SELECT * FROM bears WHERE bears.name IS NULL
  SQL
end
