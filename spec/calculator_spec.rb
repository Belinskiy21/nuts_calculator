# frozen_string_literal: true

require_relative '../calculator'

describe Calculator do # rubocop:disable Metrics/BlockLength
  describe '.new' do
    subject { described_class.new(*args) }

    context 'with correct number of arguments' do
      let(:args) { [1, 2, 3, 4] }

      it 'not raises an arror' do
        expect { subject }.not_to raise_error
      end

      it 'assigns attributes' do
        expect(subject).to have_attributes(
          destination: 1, nuts_amount: 2, fee_unit: 3, capacity: 4
        )
      end
    end

    context 'with incorrect number of arguments' do
      let(:args) { [1, 2, 3] }

      it 'raises an error' do
        expect { subject }.to raise_error ArgumentError
      end
    end
  end

  describe '#deliverable_amount' do # rubocop:disable Metrics/BlockLength
    subject { described_class.new(*args).deliverable_amount }

    let(:args) { [destination, nuts_amount, fee_unit, capacity] }
    let(:destination) { 1000 }
    let(:fee_unit) { 1 }

    context 'when the transportation fee more then cart capacity' do
      let(:capacity) { 500 }

      context 'when the transportation fee more then the nuts amount' do
        let(:nuts_amount) { 500 }

        it 'returns zero' do
          expect(subject).to eq 0
        end
      end

      context 'when the transportation fee less then the nuts amount' do
        let(:nuts_amount) { 2000 }

        it 'returns zero' do
          expect(subject).to eq 0
        end
      end
    end

    context 'when the transportation fee less then capacity' do
      let(:capacity) { rand(1001..2000) }

      context 'when the transportation fee more then the nuts amount' do
        let(:nuts_amount) { 500 }

        it 'returns zero' do
          expect(subject).to eq 0
        end
      end

      context 'when the transportation fee less then the nuts amount' do
        let(:nuts_amount) { rand(1001..2000) }

        it 'returns positive number' do
          expect(subject.positive?).to be true
        end
      end
    end
  end
end
