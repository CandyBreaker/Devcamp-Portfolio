User.create!(
  email:"test@test.com",
  password: "aaaaaa",
  password_confirmation: "aaaaaa",
  name: "Admin User",
  roles: "site_admin"
  )
  puts "1 Admin User created"

3.times do |topic|
  Topic.create!(
    title: "#{topic}"
    )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      topic_id: Topic.last.id
      )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
      title: "Rails #{skill}",
      percent_uilized: 15
      )
  end
  
  puts "5 skills created"
  
  8.times do |portfolio_item|
      Portfolio.create!(
          title: "Portfolio title: #{portfolio_item}",
          subtitle: "Ruby on Rails",
          body: "Lorem ipsum dolor sit amet..",
          main_image: "http://via.placeholder.com/600x400",
          thumb_image: "http://via.placeholder.com/350x200",
          )
  end  
  
  1.times do |portfolio_item|
      Portfolio.create!(
          title: "Portfolio title: #{portfolio_item}",
          subtitle: "Angular",
          body: "Lorem ipsum dolor sit amet..",
          main_image: "http://via.placeholder.com/600x400",
          thumb_image: "http://via.placeholder.com/350x200",
          )
  end
  puts "9 portfolio items created"
  
  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology #{technology}"
    )
  end
  
  puts "3 technologies created"