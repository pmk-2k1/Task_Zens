require 'swagger_helper'

RSpec.describe 'passwords', type: :request do

  path '/password' do

    patch('update password') do
      consumes 'application/json'
      produces 'application/json'

      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          password: { type: :string },
          password_confirmation: { type: :string }
        }
      }
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
