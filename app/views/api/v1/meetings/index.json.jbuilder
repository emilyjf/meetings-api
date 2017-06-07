json.array! @meetings.each do |meeting|
  json.id meeting.id
  json.date meeting.date
end