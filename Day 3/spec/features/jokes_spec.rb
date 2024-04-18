# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Joke' do
  #---------------start with create Joke
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end
  #---------------thêm model Joke với 3 cột là content, like, dislike
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end
  #---------------thiết lập router để kết nối URLs tới code
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end

  #---------------thêm controller cho Jokes
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end

  #---------------thêm method ' index' trong file jokes_controller.rb
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end
  #---------------tạo một file mới bên trong view/jokes tên là index.html.erb và thêm code
    context 'context' do
      before do
        joke = Joke.create(content: 'A child asked his father,
  "How were people born?" So his father said, "Adam
  and Eve made babies, then their babies became
  adults and made babies, and so on." The child then
  went to his mother, asked her the same question and
  she told him, "We were monkeys then we evolved to become
  like we are now." The child ran back to his father and said,
  "You lied to me!" His father replied, "No, your mom was
  talking about her side of the family."')
        visit root_path
      end
      it 'display a list jokes with the content' do
        expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      end
    end

  #---------------Thêm button 'This is Funny!'
  context 'context' do
    before do
      joke = Joke.create(content: 'A child asked his father,
"How were people born?" So his father said, "Adam
and Eve made babies, then their babies became
adults and made babies, and so on." The child then
went to his mother, asked her the same question and
she told him, "We were monkeys then we evolved to become
like we are now." The child ran back to his father and said,
"You lied to me!" His father replied, "No, your mom was
talking about her side of the family."')
      visit root_path
    end
    it 'display a list jokes with the content add button "This is Funny!"' do
      expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      expect(page).to have_selector(:link_or_button, 'This is Funny!')
    end
  end
  #---------------Thiết lập router cho button 'This is Funny!'
  context 'context' do
    before do
      joke = Joke.create(content: 'A child asked his father,
"How were people born?" So his father said, "Adam
and Eve made babies, then their babies became
adults and made babies, and so on." The child then
went to his mother, asked her the same question and
she told him, "We were monkeys then we evolved to become
like we are now." The child ran back to his father and said,
"You lied to me!" His father replied, "No, your mom was
talking about her side of the family."')
      visit root_path
    end
    it 'display a list jokes with the content add button "This is Funny!"' do
      expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      expect(page).to have_selector(:link_or_button, 'This is Funny!')
    end
  end

  #---------------Thêm button 'This is not funny.'
  context 'context' do
    before do
      joke = Joke.create(content: 'A child asked his father,
"How were people born?" So his father said, "Adam
and Eve made babies, then their babies became
adults and made babies, and so on." The child then
went to his mother, asked her the same question and
she told him, "We were monkeys then we evolved to become
like we are now." The child ran back to his father and said,
"You lied to me!" His father replied, "No, your mom was
talking about her side of the family."')
      visit root_path
    end
    it 'display a list jokes with the content add button "This is Funny!"' do
      expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      expect(page).to have_selector(:link_or_button, 'This is Funny!')
      expect(page).to have_selector(:link_or_button, 'This is not funny.')
    end
  end
  #---------------Thiết lập router cho button 'This is not funny!'
  context 'context' do
    before do
      joke = Joke.create(content: 'A child asked his father,
"How were people born?" So his father said, "Adam
and Eve made babies, then their babies became
adults and made babies, and so on." The child then
went to his mother, asked her the same question and
she told him, "We were monkeys then we evolved to become
like we are now." The child ran back to his father and said,
"You lied to me!" His father replied, "No, your mom was
talking about her side of the family."')
      visit root_path
    end
    it 'display a list jokes with the content add button "This is Funny!"' do
      expect(page).to have_text('A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."')
      expect(page).to have_selector(:link_or_button, 'This is Funny!')
      expect(page).to have_selector(:link_or_button, 'This is not funny.')
    end
  end
end
