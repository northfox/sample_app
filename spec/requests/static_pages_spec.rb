require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page:ホームページに対するテスト" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page:ヘルプページに対するテスト" do
    before { visit help_path }
    it { should have_content('Help') }
    
    #色々な書き方
    it {
      should have_title("Ruby on Rails Tutorial Sample App | Help")
      should have_title("#{base_title} | Help")
      should have_title(full_title('Help'))
    }
  end

  describe "About page:アバウトページに対するテスト" do
    before { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(full_title('About')) }
  end

  describe "Contact page:コンタクトに対するテスト" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

end
