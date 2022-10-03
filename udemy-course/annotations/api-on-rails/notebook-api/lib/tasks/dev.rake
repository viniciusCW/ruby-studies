namespace :dev do
  desc "Create data in database"
  task setup: :environment do
    kinds = %w(Amigo Comercial Conhecido)

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end

    kinds_in_db = Kind.all

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
        kind: kinds_in_db.sample
      )
    end
  end
end
