describe "post" do
    context "quando cadastro um novo usuário" do
        before do
            @new_user = build(:register_user).to_hash
            @result = ApiUser.save(@new_user)
        end
        
        it "então deve retornar 200" do
            puts @new_user
            expect(@result.response.code).to eql "200"

        end
    end
end

