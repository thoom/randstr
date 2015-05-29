require 'securerandom'

module Thoom
  class Strandom
    class << self
      def hex(len: 2)
        SecureRandom.hex(len  / 2)
      end

      def rand(len: 0, type: :alnum, cust: [])
        num = (48..57).to_a
        upper = (65..90).to_a
        lower = (97..122).to_a

        case type
        when :alpha
          range = upper + lower
        when :upper
          range = upper
        when :upnum
          range = num + upper
        when :lower
          range = lower
        when :lownum
          range = num + lower
        when :num
          range = num
        when :custom
          range = cust
        else
          range = num + upper + lower
        end

        # pulled from http://codereview.stackexchange.com/questions/15958
        if type == :cust
          ([nil] * len).map { range.sample }.join
        else
          ([nil] * len).map { range.sample.chr }.join
        end
      end

      def uuid()
        SecureRandom.uuid
      end
    end
  end
end