#connecttosqlserver.rb
require 'tiny_tds'
@client = TinyTds::Client.new username: 'sa',
password:'someThingComplicated1234', host:'localhost',
port:1433
puts 'Connecting to SQL Server'

if @client.active? == true then puts 'Done' end

  def execute(sql)
      result = @client.execute(sql)
      result.each
      if result.affected_rows > 0 then puts "#{result.affected_rows} row(s) affected" end
  end




@client.close
