require 'database_cleaner'

puts 'Clean DB...'
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

Page.create(
  identifier: 'home_landscape',
  title: 'Ландшафтні послуги',
  content: "Надання ландшафтних послуг - проектування ландшафтної архітектури, укладання рулонного газону, створення посівного газону, посадка рослин, догляд за садом, облаштування альпінаріїв і рокаріїв, влаштування квітників і ландшафтних композицій приватних садиб. <br>Озеленення, догляд і обслуговування парків та садів."
)

Page.create(
  identifier: 'home_sports_grounds',
  title: 'Спортивні майданчики',
  content: "Влаштування спортивних майданчиків (футбольних полів, майданчиків для ігор у гольф тощо). Створення проекту, очищення ділянки від каменів, коренів, пнів, бур'янів;  прокладання комунікацій для забезпечення освітлення, водопостачання; для всіх видів покриття, крім газону - створення щебеневого шару та асфальтобетонної основи; влаштування ігрового покриття. "
)

Page.create(
  identifier: 'home_game_grounds',
  title: 'Ігрові майданчики',
  content: "Влаштування ігрових майданчиків, галявин для приймання сонячних ванн та інших місць відпочинку)."
)

Page.create(
  identifier: 'home_successfull_projects',
  title: '-',
  content: "Ми завершили десятки успішних проектів для приватних осіб та державних структур."
)

projects = [
  {
      image: 'project/1.jpg',
      title: 'Облашутвання скверу',
      description: ''
  },
  {
      image: 'project/2.jpg',
      title: 'Вуличний інвентар',
      description: ''
  },
  {
      image: 'project/3.jpg',
      title: 'Озеленнення території',
      description: ''
  },
  {
      image: 'project/4.jpg',
      title: 'Ландшафтний дизайн',
      description: ''
  },
  {
      image: 'project/5.jpg',
      title: 'Приватний сад',
      description: ''
  },
  {
      image: 'project/6.jpg',
      title: 'Озеленнення вулиць',
      description: ''
  },
]

projects.each do |project|
  Project.create(
    title: project[:title],
    description: project[:description],
    image: File.open(Rails.root + "app/assets/images/#{project[:image]}")
  )
end

