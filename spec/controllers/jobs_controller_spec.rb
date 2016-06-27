require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  let(:job) { FactoryGirl.create(:job) }
  let(:params) do
    HashWithIndifferentAccess.new('job' => {
                                    name: FFaker::Name.name
                                  })
  end

  describe 'post#create' do
    it 'success create new job' do
      post :create, params
      expect(response).to redirect_to jobs_path
      expect(flash[:notice]).to match(/^Job was successfully created./)
    end

    it 'fail create new job' do
      params[:job][:name] = ''
      post :create, params
      expect(response).to render_template(:new)
      expect(assigns(:job).errors[:name].count).to eql 1
    end
  end
end
