require 'rails_helper'

RSpec.describe User, :type => :model do
 
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it { is_expected.to have_many(:groups) }

  it { is_expected.to ensure_length_of(:email).is_at_least(2).is_at_most(100) }
  it { is_expected.to validate_presence_of(:email) }
  
  it { is_expected.to ensure_length_of(:encrypted_password).is_at_least(8).is_at_most(100) }
  it { is_expected.to validate_presence_of(:encrypted_password) }
  it { is_expected.to allow_value(/.+@.+\..+/i).for(:encrypted_password) }

end
