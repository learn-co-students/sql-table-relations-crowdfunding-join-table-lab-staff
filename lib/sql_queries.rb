# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT pr.title, sum(pl.amount) FROM projects pr JOIN pledges pl ON pr.id = pl.project_id GROUP BY pr.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT u.name, u.age, sum(p.amount) FROM users u JOIN pledges p ON u.id = p.user_id GROUP BY u.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT pr.title, sum(p.amount) - pr.funding_goal FROM projects pr JOIN pledges p ON pr.id = p.project_id GROUP BY pr.title HAVING sum(p.amount) >= pr.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT u.name, sum(p.amount) FROM users u JOIN pledges p ON u.id = p.user_id GROUP BY u.name ORDER BY sum(p.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT pr.category, p.amount FROM projects pr JOIN pledges p ON pr.id = p.project_id WHERE pr.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT pr.category, sum(p.amount) FROM projects pr JOIN pledges p ON pr.id = p.project_id WHERE pr.category = 'books';"
end
