require 'database_cleaner'

puts 'Clean DB...'.yellow
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean 

puts 'Popultaion data...'
I18n.locale = :uk

Page.create(
  identifier: 'about_compay',
  title: 'Товариство з обмеженою відповідальністю «Перспектива-ІВ»',
  content: "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled."
)

Page.create(
  identifier: 'about_goal',
  title: 'Наша мета',
  content: "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled."
)