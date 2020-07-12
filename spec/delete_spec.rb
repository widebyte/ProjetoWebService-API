describe "delete" do
    context "quando deletar um usuário cadastrado" do
        let(:user) { build(:register_user) }
        let(:result) { ApiUser.remove(user.id) } 

        it { expect(result.response.code).to eql "204"}
    end
end