require 'rails_helper'

RSpec.describe NodesController, type: :controller do

    describe 'POST #create' do
      context 'when password is invalid' do
        it 'renders the page with error' do
          @user = Factory(:user)
          sign_in @user
          post :create, session: { title: 'Node de proba', body: 'This is the body' }

          expect(response).to render_template(:edit)
        end
      end
    end
end
