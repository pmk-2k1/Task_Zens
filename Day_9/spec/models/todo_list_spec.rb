require 'rails_helper'
RSpec.describe TodoList, type: :model do
  ############ chua tao model
  context 'validations' do
    it 'Create todo list' do
      todo = TodoList.new.save
      expect(todo).to eq(false)
    end
  end
  ############ tao model gom 'title, note, time_start, time_complete, is_complete'
  context 'validations' do
    it 'Create todo list' do
      todo = TodoList.new(title: 'Day 8: ', note: 'Hello, wordl!!', time_start: '14/5/2024',
                          time_complete: '16/5/2024').save
      expect(todo).to eq(true)
    end
  end
  # ############ validate title
  # context 'validations' do
  #   it 'Create todo list' do
  #     todo = TodoList.new(title: 'Day 8:').save
  #     expect(todo).to eq(true)
  #   end
  # end
end
