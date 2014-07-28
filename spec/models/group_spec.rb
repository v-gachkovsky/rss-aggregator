require 'rails_helper'

RSpec.describe Group, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(FactoryGirl.build(:group)).to be_valid
  end

  it { is_expected belong_to(:user) }

  it { is_expected.to have_many(:feeds) }
end
