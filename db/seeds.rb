100.times do
 
  Meeting.create!(
                    date: Faker::Time.forward(23, :morning)
                  )
end