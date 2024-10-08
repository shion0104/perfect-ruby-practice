with_current_time do
    puts 'Hi'
end

with_current_time do |now, someting|
    puts someting.inspect
end