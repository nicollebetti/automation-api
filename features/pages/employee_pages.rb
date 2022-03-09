class Employee

    include HTTParty
    require_relative '../hooks/employee_hook.rb'
    base_uri "http://dummy.restapiexample.com/api/v1"
        
    def initialize(body)
        @options = {:body => body}
        @options2 = {}
    end
    
    def postEmployee
        self.class.post("/create", @options)
    end

    def getOneEmployee(id)
        self.class.get("/employess#{id}", @options2)
    end

    def deleteEmployee(id)
        self.class.delete("/employess#{id}", @options2)
    end
    
end