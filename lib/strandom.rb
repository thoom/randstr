require 'securerandom'

module Thoom
  # Provides several convenience methods to generating random strings
  class Strandom
    @num_range = (48..57).to_a
    @upper_range = (65..90).to_a
    @lower_range = (97..122).to_a

    class << self
      attr_reader :num_range, :upper_range, :lower_range

      def alphabetic(len = 0)
        randomize(len, upper_range + lower_range)
      end

      def alphanumeric(len = 0)
        randomize(len, num_range + upper_range + lower_range)
      end

      def custom(len: 0, values: [])
        ([nil] * len).map { values.sample }.join
      end

      def hex(len = 2)
        SecureRandom.hex(len / 2)
      end

      def numeric(len = 0)
        randomize(len, num_range)
      end

      def lower_alphabetic(len = 0)
        randomize(len, lower_range)
      end

      def lower_alphanumeric(len = 0)
        randomize(len, num_range + lower_range)
      end

      def upper_alphabetic(len = 0)
        randomize(len, upper_range)
      end

      def upper_alphanumeric(len = 0)
        randomize(len, num_range + upper_range)
      end

      def uuid
        SecureRandom.uuid
      end

      private

      def randomize(len, range)
        # pulled from http://codereview.stackexchange.com/questions/15958
        ([nil] * len).map { range.sample.chr }.join
      end
    end
  end
end
