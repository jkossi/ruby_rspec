require 'run'



describe Run do
  it { is_expected.to respond_to(:duration) }
  it { is_expected.to respond_to(:distance) }
  it { is_expected.to respond_to(:timestamp) }

  describe '#timestamp' do
    it 'returns a DateTime' do
      expect(DateTime.parse(subject.timestamp)).to be_a(DateTime)
    end
  end

end

describe "Models" do
  let(:album) { Album.create(title: 'Black and Blue', performer: 'The Rolling Stones', cost: 20)}
  let(:user) { User.create(name: 'Nathan') }
  let!(:purchase) { Purchase.create(album: album, user: user) }

  it 'should create an album with a title' do
    expect(album.title).to eq 'Black and Blue'
  end

  it 'should create a user with a name' do
    expect(user.name).to eq 'Nathan'
  end

  it 'should create a purchase linking the user to the album' do
    expect(purchase.user).to eq user
    expect(purchase.album).to eq album
  end
end