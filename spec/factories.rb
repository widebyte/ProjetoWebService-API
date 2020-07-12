require_relative "models/user_model"

FactoryBot.define do
    factory :register_user, class: UserModel do
        name {"EmpregadoQA"}
        salary {"6500"}
        age {"27"}
        id {"100"}
    end
end