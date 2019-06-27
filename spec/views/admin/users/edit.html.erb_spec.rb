require "rails_helper"

  describe "admin/users/edit.html.erb", type: "view" do
    subject {rendered}
    let(:user) {FactoryBot.create :user}

    before do
      assign :user, user
      render
    end

    it {is_expected.to have_content "Edit user"}

    describe "form" do
      it{assert_select "form[action*=?]", admin_user_path(id: user.id)}

      it{is_expected.to have_field "user_name"}

      it{is_expected.to have_field "user_email"}

      it{is_expected.to have_selector "input", class: "primary-btn"}
    end

  end