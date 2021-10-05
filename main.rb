require 'httparty'
require 'terminal-table'

url = 'http://api.open-notify.org/astros.json'
response = HTTParty.get(url)
in_space = response.parsed_response

inspace_flattened = in_space.flatten

rows = []

rows << [inspace_flattened[5][0]["craft"], inspace_flattened[5][0]["name"]]
rows << [inspace_flattened[5][1]["craft"], inspace_flattened[5][1]["name"]]
rows << [inspace_flattened[5][2]["craft"], inspace_flattened[5][2]["name"]]
rows << [inspace_flattened[5][3]["craft"], inspace_flattened[5][3]["name"]]
rows << [inspace_flattened[5][4]["craft"], inspace_flattened[5][4]["name"]]
rows << [inspace_flattened[5][5]["craft"], inspace_flattened[5][5]["name"]]
rows << [inspace_flattened[5][6]["craft"], inspace_flattened[5][6]["name"]]
table = Terminal::Table.new :rows => rows
table = Terminal::Table.new :headings => ['Craft', 'Name'], :rows => rows


puts table






