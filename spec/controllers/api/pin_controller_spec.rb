# -*- coding: utf-8 -*-
require 'spec_helper'

describe Api::PinController do
  before do
    @member = Factory(:member, password: 'mala', password_confirmation: 'mala')
  end

  describe 'POST /add' do
    it 'renders json' do
      post :add, { link: 'http://la.ma.la/blog/diary_200810292006.htm', title: '近況' }, { member_id: @member.id }
      expect(response.body).to be_json
    end
  end

  describe 'POST /remove' do
    it 'renders json' do
      post :remove, { link: 'http://la.ma.la/blog/diary_200810292006.htm' }, { member_id: @member.id }
      expect(response.body).to be_json
    end
  end

  describe 'POST /clear' do
    it 'renders json' do
      post :clear, {}, { member_id: @member.id }
      expect(response.body).to be_json
    end
  end
end
