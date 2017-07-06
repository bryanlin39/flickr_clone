require 'rails_helper'

RSpec.describe User, type: :model do
  it 'adds a user' do
    User.all.each do |user|
      user.destroy
    end
    new_user = FactoryGirl.create(:user)
    expect(new_user.email).to eq("hello@gmail.com")
  end
end
