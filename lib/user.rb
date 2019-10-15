class User
  attr_accessor :age, :email

  @@all_users=Array.new
  def initialize(user_email, user_age)
      @email = user_email
      @age = user_age
      @@all_users << self
  end

  def self.all
    return @@all_users.inspect
  end

  def self.find_by_email (email_to_search)
    @@all_users.each do |user|
      if user.email == email_to_search
        return user
      end
    end
  end

end
