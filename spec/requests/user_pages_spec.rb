require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "SignUp page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Signup') }
    it { should have_selector('title', text: full_title('Signup')) }
  end
end
