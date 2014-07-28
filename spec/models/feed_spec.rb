require 'rails_helper'

RSpec.describe Feed, :type => :model do

  it "has a valid factory" do
    expect(FactoryGirl.build(:feed)).to be_valid
  end
  
  it { is_expected.to belong_to(:group) }

  it { is_expected.to have_many(:tizers) }
end
