describe RandomDataGenerator do

  attr_accessor :get_random_postcode

  before(:all) do
    @faker_service = RandomDataGenerator.new
    @faker_service.get_random_postcode
  end

  it 'should full name be a String' do
    expect(@faker_service.full_name).to be_kind_of String
  end

  it 'should address be a string' do
    expect(@faker_service.address_random).to be_kind_of String
  end

  it 'should zip code be an integer'do
  expect(@faker_service.zip_code.length).to be_kind_of Integer
  end

  it 'should job be a string'do
  expect(@faker_service.job).to be_kind_of String
  end

  it 'should nationality be a string'do
  expect(@faker_service.nationality).to be_kind_of String
  end

  it 'should birthday be a integer'do
  expect(@faker_service.age).to be_kind_of Integer
  end

  it 'should phone number be between 1-13'do
  expect(@faker_service.phoneNumber.length).to be_between(1,13).inclusive
  end

  it 'should programming language be a integer'do
  expect(@faker_service.programming_language).to be_kind_of String
  end

  it 'should company be a string'do
  expect(@faker_service.company).to be_kind_of String
  end
end
