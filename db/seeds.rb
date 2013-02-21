#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


snippets = [
  ['次の"term"レコードがある', 'Given'],
  ['"term"ページを表示している', 'Given'],
  ['"term"ページを表示する', 'When'],
  ['"term"に"term"と入力する', 'When'],
  ['"term"リンクをクリックする', 'When'],
  ['"term"ボタンをクリックする', 'When'],
  ['"term"ページを表示していること', 'Then'],
  ['"term"と表示されていること', 'Then'],
  ['"term"と表示されていないこと', 'Then']
]

snippets.each do |snippet|
  Stepsnippet.create({
    body: snippet[0],
    given_when_then: snippet[1]
  })
end

