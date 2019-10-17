# frozen_string_literal: true

require 'rspec'
require_relative '../lib/dgt_finder/response_parser'

describe 'ResponseParse' do
  let(:response_parse) do
    double(ResponseParser)
  end

  context '.fine?' do
    it 'does not have fine' do
      allow(response_parse).to receive(:fine?).and_return false

      expect(response_parse.fine?).to be_falsey
    end
  end
end
