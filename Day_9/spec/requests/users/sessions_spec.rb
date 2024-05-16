require 'swagger_helper'
def header(user)
  sign_in(user)
  { 'Authorization' => "Bearer #{user.jti}" }
end

RSpec.describe 'users/sessions', type: :request do
  path '/users/sign_in' do
    # get('new session') do
    #   response(200, 'successful') do
    #     after do |example|
    #       example.metadata[:response][:content] = {
    #         'application/json' => {
    #           example: JSON.parse(response.body, symbolize_names: true)
    #         }
    #       }
    #     end
    #     run_test!
    #   end
    # end

    post('Sign In') do
      tags 'Session'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        tyoe: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }
      response '201', 'sign in', { 'HTTP_ACCEPT' => 'application/json' } do
        let(:user) { { user: { login: 'khoanhsac.khanh18@gmail.com', password: '111111' } } }
        run_test!
      end
    end
  end

  path '/users/sign_out' do
    delete('delete session') do
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
