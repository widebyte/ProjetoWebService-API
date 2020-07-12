class UserModel
    attr_accessor :name, :salary, :age, :id

    def to_hash
    {
        name: @name,
        salary: @salary,
        age: @age,
        id: @id     
    }
    end
end