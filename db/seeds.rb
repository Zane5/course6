User.create!(email: 'admin@e.com', password: 'eeeeee', password_confirmation: 'eeeeee')

30.times do
  Course.create!([{
                   title: Faker::Educator.course_name,
                   description: Faker::TvShows::GameOfThrones.quote,
                   user_id: User.first.id
                 }])
end
