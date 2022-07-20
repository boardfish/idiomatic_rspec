require 'spec_helper'
require_relative '../guitar'

RSpec.describe Guitar do
  describe "#strum" do
    context 'when tuning is default' do
      let(:guitar) { Guitar.new }

      it 'produces E2 when the first string is strummed' do
        expect(guitar.strum(0)).to eq('E2')
      end

      it 'produces A2 when the second string is strummed' do
        expect(guitar.strum(1)).to eq('A2')
      end

      it 'produces D3 when the third string is strummed' do
        expect(guitar.strum(2)).to eq('D3')
      end

      it 'produces G3 when the fourth string is strummed' do
        expect(guitar.strum(3)).to eq('G3')
      end

      it 'produces B3 when the fifth string is strummed' do
        expect(guitar.strum(4)).to eq('B3')
      end

      it 'produces E4 when the sixth string is strummed' do
        expect(guitar.strum(5)).to eq('E4')
      end
    end

    context 'when tuning is drop D' do
      let(:guitar) { Guitar.new(tuning: { 0 => -2 }) }

      it 'produces D2 when the first string is strummed' do
        expect(guitar.strum(0)).to eq('D2')
      end

      it 'produces A2 when the second string is strummed' do
        expect(guitar.strum(1)).to eq('A2')
      end

      it 'produces D3 when the third string is strummed' do
        expect(guitar.strum(2)).to eq('D3')
      end

      it 'produces G3 when the fourth string is strummed' do
        expect(guitar.strum(3)).to eq('G3')
      end

      it 'produces B3 when the fifth string is strummed' do
        expect(guitar.strum(4)).to eq('B3')
      end

      it 'produces E4 when the sixth string is strummed' do
        expect(guitar.strum(5)).to eq('E4')
      end
    end
  end
end
