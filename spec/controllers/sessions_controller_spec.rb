require 'rails_helper'
describe SessionsController do

  describe '#create' do
    context 'with oauth' do
      it 'signs in existing developer by email' do
        developer = FactoryGirl.create :developer, email: 'jake@hashrocket.com'
        request.env['omniauth.auth'] = {
          'info' => {
            'email' => 'jake@hashrocket.com'
          }
        }

        expect do
          post :create_oauth
          expect(response).to redirect_to root_path
        end.to change { Authem::Session.count }.by(1)
        expect(Authem::Session.last.subject_id).to eq developer.id
      end

      it 'signs up a new developer by email' do
        request.env['omniauth.auth'] = {
          'info' => {
            'email' => 'newdev@hashrocket.com',
            'name'  => 'John Smith'
          }
        }

        expect do
          post :create_oauth
          expect(response).to redirect_to root_path
        end.to change { Developer.count }.by(1)
        developer = Developer.last
        expect(Authem::Session.last.subject_id).to eq developer.id
      end
    end

    context 'with authem' do
      it 'signs in with email and password' do
        developer = FactoryGirl.create :developer, email: 'jake@hashrocket.com'

        expect do
          post :create_authem, session: { email: developer.email, password: 'ha$hrocket' }
          expect(response).to redirect_to root_path
        end.to change { Authem::Session.count }.by(1)
        expect(Authem::Session.last.subject_id).to eq developer.id
      end

      context 'with invalid credentials' do
        it 'does not sign in' do
          developer = FactoryGirl.create :developer

          expect do
            post :create_authem, session: { email: 'typo@hashrocket.com', password: 'ha$hrocket' }
            expect(response).to render_template :new
          end.to_not change { Authem::Session.count }
        end
      end
    end
  end
end
