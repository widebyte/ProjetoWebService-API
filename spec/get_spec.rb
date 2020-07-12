describe "get" do
    context "quando o usuário é registrado" do
        let(:user) { build(:register_user) }
        let(:result) { ApiUser.find(user.id) } 
        
        it "então deve retornar 200" do
            puts result.parsed_response
            expect(result.response.code).to eql "200"
        end
    end
end

