require 'swagger_helper'

RSpec.describe 'todo_lists', type: :request do

  path '/users/{user_id}/todo_lists' do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'

    get('list todo_lists') do
      tags 'Todo List'
      produces 'application/json'
      response(200, 'successful') do
        let(:user_id) { "#{current_user.id}" }

        example 'application/json', :example, [
          {
            'id': 1,
            'title': 'Day 8',
            'note': 'Hello world!!',
            'time_start': '2024-05-14',
            'time_complete': '2024-05-17',
            'is_complete': 'false'
          }
        ]
        run_test!
      end
    end

    post('create todo_list') do
      tags 'Posts'

      consumes 'application/json'
      produces 'application/json'

      parameter name: :new_post, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          note: { type: :string },
          time_start: {type: :string},
          time_complete: {type: :string}
        }
      }
      response(200, 'successful') do
        let(:user_id) { '1' }
        let(:new_todo) { { title: 'Post 1', note: 'Hello, wordl!!', time_start: '16-5-2024', time_complete: '20-6-2024' } }

        example 'application/json', :example, [
          {
            "id": 1,
            "title": 'Posts 1',
            "note": 'Hello world!!',
            "time_start": '2024-05-14',
            "time_complete": '2024-05-15'
          }
        ]
        run_test!
      end
    end
  end

  path '/users/{user_id}/todo_lists/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'user_id', in: :path, type: :string, description: 'user_id'
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show todo_list') do
      response(200, 'successful') do
        let(:user_id) { "#{current_user.id}"}
        let(:id) { '1' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update todo_list') do
      consumes 'application/json'
      produces 'application/json'

      parameter name: :post_data, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          note: { type: :string },
          time_start: {type: :string},
          time_complete: {type: :string},
          is_complete: {type: :string}
        }
      }
      response(200, 'successful') do
        let(:user_id) { '1' }
        let(:id) { '1' }
        # let(:post_data) { { title: 'New Title' } }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update todo_list') do
      consumes 'application/json'
      produces 'application/json'

      parameter name: :post_data, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          note: { type: :string },
          time_start: {type: :string},
          time_complete: {type: :string},
          is_complete: {type: :string}
        }
      }
      response(200, 'successful') do
        let(:user_id) { '1' }
        let(:id) { '1' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete todo_list') do
      response(200, 'successful') do
        let(:user_id) { '1' }
        let(:id) { '1' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/' do

    get('list todo_lists') do
      tags 'Todo List'
      produces 'application/json'
      response(200, 'successful') do
        let(:user_id) { "#{current_user.id}" }

        example 'application/json', :example, [
          {
            'id': 1,
            'title': 'Day 8',
            'note': 'Hello world!!',
            'time_start': '2024-05-14',
            'time_complete': '2024-05-17',
            'is_complete': 'false'
          }
        ]
        run_test!
      end
    end
  end

  path '/task_complete' do

    get('task_complete todo_list') do
      tags 'Todo List'
      produces 'application/json'
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
