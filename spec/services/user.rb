class ApiUser
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
    headers "Content-Type" => "application/json"

    def self.save(user)
        post("/create", body: user.to_json)
    end

    def self.find(user_id)
        get("/employee/#{user_id}")        
    end

    def self.remove(user_id)
        delete("/delete/#{user_id}")
    end
end