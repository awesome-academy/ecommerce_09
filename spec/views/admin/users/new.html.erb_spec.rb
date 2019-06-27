require "spec_helper"

  describe "admin/users/new.html.erb" do
    subject {rendered}
    let(:user) {FactoryBot.create :user}

    before do
      assign :user, user
      render
    end

    it {is_expected.to have_content "New user"}

    describe "form" do
      it{assert_select "form[action*=?]", admin_users_path}

      it{is_expected.to have_field "user_name"}

      it{is_expected.to have_field "user_email"}

      it{is_expected.to have_selector "input", class: "primary-btn"}
    end
  end