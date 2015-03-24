module Rubory
  module Actions
    class ApprovePrPlease
      def call
        message.reply(un_approved_replies)
      end

      private

      def un_approved_replies
      end
    end
  end
end
