require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App | "}

  describe "Home page:ホームページに対するテスト" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home' #ブラウザアクセス
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}Home")
    end
  end

  describe "Help page:ヘルプページに対するテスト" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
      expect(page).to have_title("#{base_title}Help")
    end
 
  end

  describe "About page:アバウトページに対するテスト" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title}About")
    end
  end

  describe "Contact page:コンタクトに対するテスト" do
    it "should have the content 'contact'" do
      visit '/static_pages/contact' #ブラウザアクセス
      expect(page).to have_content('Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title}Contact")
    end
  end

end
