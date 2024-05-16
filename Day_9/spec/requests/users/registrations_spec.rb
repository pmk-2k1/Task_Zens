require 'swagger_helper'

RSpec.describe 'users/registrations', type: :request do
  path '/users' do
    post('create registration') do
      tags 'Registration'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        tyoe: :object,
        properties: {
          email: { type: :string },
          password: { type: :string },
          fullname: { type: :string }
        },
        required: %w[email password fullname]
      }
      response(200, 'successful') do
        let(:user) { { user: { email: 'khoanhsac.khanh18@gmail.com', password: '111111', fullname: 'Khanh Phung' } } }
        run_test!
      end
    end
  end
end
