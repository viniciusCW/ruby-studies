users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def verify_user (username, pw, hash)
    hash.each do |user|
        if user[:username] == username && user[:password] == pw
            return p user
        end
    end

    puts "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempt = 0
while attempt < 3
    print "username: "
    username_input = gets.chomp

    print "password: "
    password_input = gets.chomp

    verify_user(username_input, password_input, users)

    puts "Press n to quit or any other key to continue:"
    quit = gets.chomp

    if quit == 'n'
        attempt = 3
    else
        attempt += 1
    end
end
