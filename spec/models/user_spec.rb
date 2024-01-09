describe User do

  describe '#root_user?' do
    let(:root_user) {
      create(:user, root_user: true)
    }

    it 'does not allow destroying the root user' do
      expect(root_user.destroy).to be_falsey
    end

    it "is not a root user by default" do
      expect(subject.root_user?).to be false
    end
  end
  
end