require 'httparty'
require 'terminal-table'

url = 'http://api.open-notify.org/astros.json'
response = HTTParty.get(url)
in_space = response.parsed_response

inspace_flattened = in_space.flatten[5]
inspace_grouped = inspace_flattened.group_by { |craft| craft.shift }
rows =[]
table = Terminal::Table.new do |t|
    t.rows = rows 
    t.add_row ["Craft", "Name"]  
    t << :separator 
    inspace_grouped.each do |key, value|
        puts value.sort_by{|person| person["name"]}
        value.each do |people|

            t.add_row [key[1],people["name"]]
        end
        
    end
        
    # t.add_row [value["craft"], value["name"]]
    
    
end

table.title = "In Space"

# puts table







