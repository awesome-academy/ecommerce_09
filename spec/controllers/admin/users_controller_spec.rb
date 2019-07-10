require "rails_helper"

RSpec.describe Admin::UsersController, type: :controller do
  let(:admin){FactoryBot.create :admin}
  let(:not_admin){FactoryBot.create :user}
  let(:invalid_params){{name: ""}}

  describe "before action" do
    before{sign_in admin}

    it{is_expected.to use_before_action :find_user}

    it{is_expected.to use_before_action :set_locale}
  end

  describe "GET index" do
    context "when user did not sign in" do
      before{get :index}

      it{expect(response).to redirect_to login_path locale: "en"}
    end

    context "when user signed in but is not an admin" do
      before do
        sign_in not_admin
        get :index
      end

      it{expect(response).to redirect_to root_path locale: "en"}

      it{is_expected.to set_flash[:danger].to(
        I18n.t "helpers.warning[not_authorized]")}
    end

    context "when user signed in as an admin" do
      before do
        sign_in admin
        get :index
      end

      it{expect(response).to render_template :index}
    end
  end

  describe "GET new" do
    context "when user did not sign in" do
      before{get :new}

      it{expect(response).to redirect_to login_path locale: "en"}
    end

    context "when user signed in but is not an admin" do
      before do
        sign_in not_admin
        get :new
      end

      it do
        is_expected.to set_flash[:danger].to(
        I18n.t "helpers.warning[not_authorized]")
        end
    end

    context "when user signed in as an admin" do
      before do
        sign_in admin
        get :new
      end

      it{expect(response).to render_template :new}
    end
  end

  describe "POST create" do
    before {sign_in admin}

    context "when valid attributes" do
      it do
        post :create, params: {user: FactoryBot.attributes_for(:user)}
        expect(assigns(:user)).to be_a User
      end
    end

    context "when invalid attributes" do
      it do
        post :create, params: {user: invalid_params}
        expect(response).to render_template :new
      end
    end
  end

  describe "GET edit" do
    context "when user did not sign in" do
      before{get :edit, params:{id: not_admin.id}}

      it{expect(response).to redirect_to login_path locale: "en"}
    end

    context "when user signed in but is not an admin" do
      before do
        sign_in not_admin
        get :edit, params:{id: not_admin.id}
      end

      it{is_expected.to set_flash[:danger].to(
        I18n.t "helpers.warning[not_authorized]")}
    end

    context "when user signed in as an admin" do
      before do
        sign_in admin
        get :edit, params:{id: not_admin.id}
      end

      it{expect(response).to render_template :edit}
    end
  end

  describe "PUT create" do
    before {sign_in admin}

    context "when valid attributes" do
      it do
        put :update, params: {user: FactoryBot.attributes_for(:user), id: not_admin.id}
        expect(assigns(:user)).to be_a User
      end
    end

    context "when invalid attributes" do
      it do
        put :update, params: {user: invalid_params, id: not_admin.id}
        expect(response).to render_template :edit
      end
    end
  end
end
