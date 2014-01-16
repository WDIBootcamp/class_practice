require 'json'

result = JSON.parse( '{"Animals":[ { "name": "Fluffy", "age": 5, "species": "dog"},
              { "name": "Buster", "age": 10, "species": "cat"},
              { "name": "Mochi", "age": 4, "species": "dog"},
              { "name": "Russel", "age": 5, "species": "dog"}
            ],
  "Clients":[ { "name": "Tim", "num_children": 0},
              { "name": "Angelina", "num_children": 6}
            ]
}')


result["Animals"].each { |pet| puts "#{pet['name']} - #{pet['age']} years old" }

puts "The first client's name is: " + result["Clients"][0]["name"]