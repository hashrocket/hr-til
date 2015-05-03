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
          post :create
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
          post :create
          expect(response).to redirect_to root_path
        end.to change { Developer.count }.by(1)
        developer = Developer.last
        expect(Authem::Session.last.subject_id).to eq developer.id
      end
    end
  end
end
