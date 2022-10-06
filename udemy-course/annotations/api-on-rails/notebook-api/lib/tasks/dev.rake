namespace :dev do
  desc "Create data in database"
  task setup: :environment do
    %x(rails db:drop db:create db:migrate)

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

    Contact.all.each do |contact|
      contact_id = contact.id
      Random.rand(5).times do |i|
        Phone.create!(number: Faker::PhoneNumber.cell_phone, contact_id: contact_id)
      end

      Address.create!(street: Faker::Address.street_address, city: Faker::Address.city, contact_id: contact_id)
    end
  end
end
