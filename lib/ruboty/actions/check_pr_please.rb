module Ruboty
  module Actions
    class CheckPrPlease < Base
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

      def repository
        @repository ||= ENV['GITHUB_REPOSITORY']
      end

      def label
        @label ||= message.match_data.captures.first.to_s
      end

      def begging_message
        return false unless unchecked.present?
        str = "未確認の Pull Request が #{unchecked.count} 件あります！！、！\n>>> "
        unchecked.each do |pr|
          str << "#{pr.title} #{pr.pull_request.html_url}\n"
        end
        str.chomp
      end

      def unchecked
        client.issues(repository, labels: label)
      end
    end
  end
end
