RSpec.describe CharactersController, type: :controller do
  describe '.index' do
    it 'renders :index' do
      get :index
      expect(response).to render_template :index
    end

    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe '.new' do
    it 'when character does not exist, successfully render' do
      get :new, params: { alter_ego: 'Red Hood', real_name: 'Jason Todd', debut: 'Never', status: 'Hero', bio: 'a vigilante anti-hero who has been a member of and antagonist to the Batman Family. Batman originally trained him to be the second Robin, his new side-kick after Dick Grayson became Nightwing. Jason was murdered by the Joker, although he was later resurrected and returned as the second Red Hood.' }

      expect(response).to render_template :new
    end

    it 'has a 200 status code' do
      get :new, params: { alter_ego: 'Red Hood', real_name: 'Jason Todd', debut: 'Never', status: 'Hero', bio: 'a vigilante anti-hero who has been a member of and antagonist to the Batman Family. Batman originally trained him to be the second Robin, his new side-kick after Dick Grayson became Nightwing. Jason was murdered by the Joker, although he was later resurrected and returned as the second Red Hood.' }

      expect(response.status).to eq(200)
    end
  end

  describe '.create' do
    def valid_params
      {
        character: {
          alter_ego: 'Red Hood',
          real_name: 'Jason Todd',
          debut: 'Never',
          status: 'Hero',
          bio: 'A vigilante anti-hero who has been a member of and antagonist to the Batman Family. Batman originally trained him to be the second Robin, his new side-kick after Dick Grayson became Nightwing. Jason was murdered by the Joker, although he was later resurrected and returned as the second Red Hood.'
        }
      }
    end

    it 'create a credit with seller id' do
      post :create, params: valid_params

      expect(Character.last.alter_ego).to eq('Red Hood')
    end
  end
end