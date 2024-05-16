require 'swagger_helper'

RSpec.describe 'users', type: :request do
  path '/users' do
    get('list users') do
      tags 'Users'
      produces 'application/json'
      response(200, 'successful') do
        example 'application/json', :example, [
          {
            "id": 1,
            "fullname": 'Khanh Phung',
            "email": 'khanhphung1801@gmail.com'
          }
        ]
        run_test!
      end
    end
  end

  path '/users/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show user') do
      
      response(200, 'successful') do
        let(:id) {'1'}

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

    patch('update user') do
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          fullname: { type: :string },
          email: { type: :string }
        }
      }
      response(200, 'successful') do
        let(:id) { '5' }
        let(:user){{ fullname: 'Phung'}}

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
