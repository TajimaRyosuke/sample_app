# frozen_string_literal: true

require 'rails_helper'

RSpec describe List,"モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
    it "有効な投稿内容の場合は保存されるか" do
      expect(FactoryBot.build(:list)).to be_vaild
    end
  end
  context "空白のバリデーションチェック" do
    it "titleが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      list = List.new(title:'',body:'hoge')
      expect(list).to be_invalid
      expect(list.errors[:title]).to include("can't be blank")
    end
    it "bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      list = List.new(title:'hoge', body:'')
      expect(list).to be_invalid
      expect(list.ettors[:body]).to include("can't be blank")
    end
  end
end