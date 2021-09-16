require 'rails_helper'

describe "ユーザーログイン前のテスト" do
  describe "TOP画面のテスト" do
    before do
      visit root_path
    end

    context "表示内容の確認" do
      it "URLが正しい" do
        expect(current_path).to eq '/'
      end

      it "「今すぐ始める」リンクが表示される" do
        expect(page).to have_link "今すぐ始める"
      end

      it "「既に会員の方はこちら」リンクが表示される" do
        expect(page).to have_link "既に会員の方はこちら"
      end

      it "「ゲストログイン」リンクが表示される" do
        expect(page).to have_link "ゲストログイン"
      end
    end
  end

  describe "ヘルプ画面のテスト" do
    before do
      visit "/help"
    end

    context "表示内容の確認" do
      it "URLが正しい" do
        expect(current_path).to eq '/help'
      end
    end
  end

  describe "ヘッダーのテスト(ログイン前)" do
    before do
      visit root_path
    end
    
    context "表示の確認" do
      it "タイトルが表示される" do
        expect(page).to have_content "TeachMarket"
      end
    end
  end
end