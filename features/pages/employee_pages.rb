class Employee

    include HTTParty
    require_relative '../hooks/employee_hook.rb'
    base_uri "http://dummy.restapiexample.com/api/v1"
        
    def initialize(body)
        @options = {:body => body}
    end
    
    def postEmployee
        self.class.post("/create", @options)
    end
    
end