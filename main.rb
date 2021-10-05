require 'httparty'
require 'terminal-table'

url = 'http://api.open-notify.org/astros.json'
response = HTTParty.get(url)
in_space = response.parsed_response

inspace_flattened = in_space.flatten

rows = []

rows << [inspace_flattened[1][0]["craft"], inspace_flattened[1][0]["name"]]
rows << [inspace_flattened[1][1]["craft"], inspace_flattened[1][1]["name"]]
rows << [inspace_flattened[1][2]["craft"], inspace_flattened[1][2]["name"]]
rows << [inspace_flattened[1][3]["craft"], inspace_flattened[1][3]["name"]]
rows << [inspace_flattened[1][4]["craft"], inspace_flattened[1][4]["name"]]
rows << [inspace_flattened[1][5]["craft"], inspace_flattened[1][5]["name"]]
rows << [inspace_flattened[1][6]["craft"], inspace_flattened[1][6]["name"]]
table = Terminal::Table.new :rows => rows
table = Terminal::Table.new :headings => ['Craft', 'Name'], :rows => rows


puts table






