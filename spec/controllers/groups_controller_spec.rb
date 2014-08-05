#require 'rails_helper'
require 'spec_helper'

#RSpec.describe GroupsController, :type => :controller do

describe GroupsController do
  context "when user not logged in" do
    describe "GET #index" do
      it "redirects to login page" do
        get :index
        expect(response).to redirect_to new_user_session_path
      end
    end
  end

  context "when user logged in" do
    let(:user) { FactoryGirl.create(:user) }
    subject { FactoryGirl.create(:group, owner: user) }

    before do
      sign_in user
    end
  end

  describe "GET #index" do
    it "render :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #new" do
    it "assigns the requested group to new group" do
      get :new
      expect(assigns(:group)).to be_new_record
    end

    it "renders the :new view" do
      get :new
      expect(response).to render_template :new
    end
  end 

  describe "POST #create" do
    context "with valid attributes" do
      it "creates new object" do
        expect{
          post :create, group: FactoryGirl.attributes_for(:group)
        }.to change(Group, :count).by(1)
      end
    end
  end

  describe "GET #edit" do
    it "assigns the requested group to subject" do
      get :edit, id: subject
      expect(assigns(:group)).to eq(subject)
    end
    
     it "renders the :edit view" do
       get :edit, id: subject
       expect(response).to render_template :edit
     end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates object" do
        expect{
          patch :update, id: subject, group: { name: 'new_group' }
        }.to change{ subject.reload.name }. to('new_group')
      end
    
       it "redirects to index path" do
         patch :update, id: subject, group: { name: 'new_group' }
         expect(response).to redirect_to groups_path
       end
    end
  end


  describe 'DELETE #destroy' do
    before(:each) { @group = FactoryGirl.create :group, owner: user }
    
    it "deletes the group" do
      expect {
        delete :destroy, id: @group
      }.to change(Group, :count).by(-1)
    
    end

    it "redirects to groups#index" do
      delete :destroy, id: @group
      expect(response).to redirect_to groups_path
    end
  end

end
#end