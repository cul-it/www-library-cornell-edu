if 1
  begin
    puts 'all'
    raise NoMethodError
  rescue Exception => e
    puts e.message
  end
else
  puts 'never'
end

if false
  puts 'never 3'
else
  begin
    if 1
      puts 'all 2'
      raise NoMethodError
    else
      puts 'never 2'
    end
  rescue Exception => e
      puts e.message
      Process.exit(0)
  end
end
