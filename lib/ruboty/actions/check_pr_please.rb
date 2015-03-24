module Rubory
  module Actions
    class CheckPrPlease
      def call
        message.reply(begging_message)
      end

      private

      def client
        @client ||= Octokit::Client.new(access_token: access_token)
      end

      def access_token
        @access_token ||= ENV['GITHUB_ACCESS_TOKEN']
      end

      def label
        @label ||= ENV['GITHUB_PR_LABEL']
      end

      def begging_message
        return false unless uncheckd_pull_requests.present?
        '未確認の Pull Request があります！！、！' << un_checkd_pull_requests.join(' ')
      end

      def uncheckd_pull_requests
        uncheckd = client.issues '', labels: label
        uncheckd.map {|pr| "#{pr.title} #{pr.pull_request.html_url}" }
      end
    end
  end
end
