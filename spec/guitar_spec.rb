require 'spec_helper'
require_relative '../guitar'

RSpec.describe Guitar do
  describe "#strum" do
    subject { guitar.strum(string) }

    shared_context 'when tuning is default' do
      let(:guitar) { described_class.new }
    end

    shared_context 'when tuning is drop D' do
      let(:guitar) { described_class.new(tuning: { 0 => -2 }) }
    end

    context 'when the first string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 0 }

      it { is_expected.to eq('E2') }
    end

    context 'when the second string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 1 }

      it { is_expected.to eq('A2') }
    end

    context 'when the third string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 2 }

      it { is_expected.to eq('D3') }
    end

    context 'when the fourth string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 3 }

      it { is_expected.to eq('G3') }
    end

    context 'when the fifth string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 4 }

      it { is_expected.to eq('B3') }
    end

    context 'when the sixth string is strummed in default tuning' do
      include_context 'when tuning is default'

      let(:string) { 5 }

      it { is_expected.to eq('E4') }
    end

    context 'when the first string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 0 }

      it { is_expected.to eq('D2') }
    end

    context 'when the second string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 1 }

      it { is_expected.to eq('A2') }
    end

    context 'when the third string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 2 }

      it { is_expected.to eq('D3') }
    end

    context 'when the fourth string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 3 }

      it { is_expected.to eq('G3') }
    end

    context 'when the fifth string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 4 }

      it { is_expected.to eq('B3') }
    end

    context 'when the sixth string is strummed in drop D tuning' do
      include_context 'when tuning is drop D'

      let(:string) { 5 }

      it { is_expected.to eq('E4') }
    end
  end
end
