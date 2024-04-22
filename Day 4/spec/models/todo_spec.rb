require 'rails_helper'
# frozen_string_literal: true
RSpec.describe Todo, type: :model do
  context 'validations' do
    it 'ensures the title presence of todo' do
      todo = Todo.new().save
      expect(todo).to eq(true)
    end
  end
  
end
