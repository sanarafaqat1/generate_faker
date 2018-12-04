require 'faker'
require 'httparty'
require 'json'

class RandomDataGenerator
  include HTTParty

  base_uri 'api.postcodes.io'

  def get_random_postcode
    JSON.parse(self.class.get("/random/postcodes/").body)['result']['postcode']
  end

  def full_name
    Faker::Name.name
  end

  def address_random
    Faker::Address.city
  end

  def zip_code
    Faker::Address.zip_code
  end

  def job
    Faker::Job.title
  end

  def nationality
    Faker::Nation.nationality
  end

  def birthday
    Faker::Date.birthday
  end

  def age
    Date.today.year - birthday.year
  end

  def phoneNumber
    Faker::Config.locale = 'en-GB'
    Faker::PhoneNumber.phone_number
  end

  def programming_language
    Faker::ProgrammingLanguage.name
  end

  def company
    Faker::Company.name
  end
end

# test = RandomDataGenerator.new
# puts test.full_name
# puts test.address_random
# puts test.zip_code
# puts test.job
# puts test.nationality
# puts test.age
# puts test.phoneNumber
# puts test.get_random_postcode
# puts test.programming_language
# puts test.company
