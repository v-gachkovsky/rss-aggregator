require 'rails_helper'

RSpec.describe Feed, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(FactoryGirl.build(:feed)).to be_valid
  end
  
  it { is_expected belong_to(:group) }

  it { is_expected.to have_many(:tizers) }
end
