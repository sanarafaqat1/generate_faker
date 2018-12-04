require 'faker'

class Generator

  attr_accessor :first_name

  def full_name
    @random_full_name = Faker::Name.name
  end

  def address_random
    @random_address = Faker::Address.city
  end

  def zip_code
    @random_zipcode = Faker::Address.zip_code
  end

  def job
    @random_job = Faker::Job.title
  end

  def nationality
    @random_nationality = Faker::Nation.nationality
  end

  def birthday
    Faker::Date.birthday
  end

  def age
    Date.today.year - birthday.year
  end
  
end
test = Generator.new
puts test.full_name
puts test.address_random
puts test.zip_code
puts test.job
puts test.nationality
puts test.age
