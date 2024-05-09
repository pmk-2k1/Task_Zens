require 'rails_helper'

RSpec.describe Joke, type: :model do
  #----------------------Chưa thêm validation cho cột content của model Joke
  context 'validations' do
    it 'ensures the content presence of jokes' do
      joke = Joke.new(content: '').save
      expect(joke).to eq(false)
    end
  end
  #---------------------Thêm validation cho cột content của model Joke 'validates :content, presence: true' vào joke.rb
  context 'validations' do
    it 'ensures the content presence of jokes' do
      joke = Joke.new(content: 'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."').save
      expect(joke).to eq(true)
    end
  end
  #-------------------Validates cho số lượng kí tự của cột column
  #min-length: 5
  context 'validations' do
    it 'ensures that content has at least 5 characters' do
      joke = Joke.new(content: 'father').save
      expect(joke).to eq(true)
    end
  end

  #-------------------Validates cho số lượng kí tự của cột column
  #max-length: 10
  context 'validations' do
    it 'ensures that content has at most 10 characters' do
      joke = Joke.new(content: 'The child').save
      expect(joke).to eq(true)
    end
  end
  #-------------------Validates cho số lượng kí tự của cột column
  #Chỉ cần không để trống
  context 'validations' do
    it 'ensures that content is not empty' do
      joke = Joke.new(content: 'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."').save
      expect(joke).to eq(true)
    end
  end
end
