models = [
  {name: 'test'},
  {name: 'test2'},
  {name: 'test3'},
  {name: 'test4'},
  {name: 'test5'},
  {name: 'test6'},
  {name: 'test7'},
  {name: 'test8'},
  {name: 'test9'},
  {name: 'test10'},
  {name: 'test11'},
  {name: 'test12'},
  {name: 'test13'},
  {name: 'test14'},
  {name: 'test15'},
  {name: 'test16'},
  {name: 'test17'}
]

models.each do |u|
  Model.create(u)
end
