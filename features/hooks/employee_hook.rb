
Before '@employee' do

    @name = Faker::Name.name
    @salary = 6000
    @age = 18

    @body = {
        "name": @name,
        "salary": @salary,
        "age": @age

    }

    @employee = Employee.new(@body)
    
end