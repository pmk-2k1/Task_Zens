require 'rails_helper'
RSpec.describe User, type: :model do
  context 'validations' do
    it 'Create user' do
      user = User.new().save
      expect(user).to eq(false)
    end
  end
  ####################
  # context 'validations' do
  #   it 'Create user' do
  #     user = User.new(fullname: 'Khanh phung').save
  #     expect(user).to eq(true)
  #   end
  # end
  # ####################
  # context 'validations' do
  #   it 'Create user' do
  #     user = User.new(fullname: 'Khanh phung', email: 'khoanhsac.khanh18@gmail.com').save
  #     expect(user).to eq(true)
  #   end
  # end
  ####################
  context 'validations' do
    it 'Create user' do
      user = User.new(fullname: 'Khanh phung', email: 'khoanhsac.khanh18@gmail.com', password: '111111').save
      expect(user).to eq(true)
    end
  end
end
