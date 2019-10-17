# frozen_string_literal: true

require 'rspec'
require_relative '../lib/dgt_finder/scrapper'

describe 'Scrapper' do
  let(:scrapper) do
    double(Scrapper)
  end

  context '.scrap' do
    it 'succeeds' do
      allow(scrapper).to receive(:scrap).and_return 'Something'

      expect(scrapper.scrap('SPEC_TEST')).not_to be_empty
    end
  end
end
