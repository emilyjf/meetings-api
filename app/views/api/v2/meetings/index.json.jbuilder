json.array! @meetings.each do |meeting|
  json.date meeting.date
end