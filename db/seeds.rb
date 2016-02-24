# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Purpose.connection.execute("TRUNCATE TABLE purposes;")
Target.connection.execute("TRUNCATE TABLE targets;")

Purpose.create([
  {name: '企画プロモーション'},
  {name: '記念撮影'},
  {name: '官庁撮影'},
  {name: 'テレビ撮影'},
  {name: '測量'}
])

Target.create([
  {name: '建造物'},
  {name: '広大な自然'},
  {name: '鉄橋'},
  {name: '製品'},
  {name: '人'},
  {name: '街並み'},
  {name: 'その他'}
])
