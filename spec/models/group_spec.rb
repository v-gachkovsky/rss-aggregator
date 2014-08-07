require 'rails_helper'

RSpec.describe Group, :type => :model do
 
  it "has a valid factory" do
    expect(FactoryGirl.build(:group)).to be_valid
  end

  it { is_expected.to belong_to(:user) }

  it { is_expected.to have_many(:feeds) }

  it { is_expected.to ensure_length_of(:name).is_at_least(2).is_at_most(100) }
  
  it { is_expected.to validate_presence_of(:name) }

end
