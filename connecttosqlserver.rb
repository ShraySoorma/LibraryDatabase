require 'tiny_tds'
require 'tiny_tds'
@client = TinyTds::Client.new username: 'sa',
password:'someThingComplicated1234', host:'localhost',
port:1433
#puts 'Connecting to SQL Server'

#if @client.active? == true then puts 'Done' end
puts "is"
  def execute(sql)
      result = @client.execute(sql)
      result.each
      if result.affected_rows > 0 then puts "#{result.affected_rows} row(s) affected" end
  end



    puts "Enter the command you would like to run: "
    puts "Search for books (1)"
    puts "Account Access (2)"
 
 command = gets.chomp
  if command.to_s == "1"
    puts "Searching for books..." 

  elsif command.to_s == "2"
    puts "Do you have an account? (Y/N)"
    command = gets.chomp
    if command == "Y"
      while correctInfo == false do |
        puts "enter member id:"
        user = gets.chomp
        puts "enter pin:"
        password = gets.chomp
        
        #pull up information for that account
        #if the information is valid
        #else, request that the ifnromation is
      end

        
      end
      
      puts "what information would you like to see on your account?"
      puts 
    end

    puts "Accessing your account..."
    puts "which of the following commands would you like to run?:"
    puts "check amount owed"
    puts "view account information"
    puts 
  else
    puts "Error!"
  end
puts "DONE"

@client.close
