require 'rails_helper'

RSpec.describe Group, :type => :model do
 
  it "has a valid factory" do
    expect(FactoryGirl.build(:group)).to be_valid
  end

  it { is_expected.to belong_to(:user) }

  it { is_expected.to have_many(:feeds) }
end
