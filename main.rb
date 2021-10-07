require 'httparty'
require 'terminal-table'

url = 'http://api.open-notify.org/astros.json'
response = HTTParty.get(url)
in_space = response.parsed_response

inspace_flattened = in_space.flatten[5]
rows =[]

table = Terminal::Table.new do |t|
    t.rows = rows 
    t.add_row ["Craft", "Name"]  
    t << :separator 
    inspace_flattened.each_with_index do | value, index |
        
        t.add_row [value["craft"], value["name"]]
    end
    
end

table.title = "In Space"

puts table







