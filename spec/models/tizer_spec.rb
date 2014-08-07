require 'rails_helper'

RSpec.describe Tizer, :type => :model do
 
  it "has a valid factory" do
    expect(FactoryGirl.build(:tizer)).to be_valid
  end

  it { is_expected.to belong_to(:feed) }
  it { is_expected.to ensure_length_of(:name).is_at_least(2).is_at_most(200) }
end
