require 'rails_helper'

RSpec.describe User, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it { is_expected.to have_many(:groups).with_foreign_key('user_id') }

end
