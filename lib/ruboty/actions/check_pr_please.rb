module Rubory
  module Actions
    class ApprovePrPlease
      def call
        message.reply(begging_message)
      end

      private

      def client
        @client ||= Octokit::Client.new(login: login, password: password)
      end

      def login
        @login ||= ''
      end

      def password
        @password ||= ''
      end

      def label
        @label ||= ''
      end

      def begging_message
        return false unless uncheckd_pull_requests.present?
        '未承認の Pull Request があります！！、！' << un_checkd_pull_requests.join(' ')
      end

      def uncheckd_pull_requests
        uncheckd = client.issues '', labels: label
        uncheckd.map {|pr| "#{pr.title} #{pr.pull_request.html_url}" }
      end
    end
  end
end
