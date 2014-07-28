require 'rails_helper'

RSpec.describe Tizer, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(FactoryGirl.build(:tizer)).to be_valid
  end

  it { is_expected belong_to(:feed) }
end
