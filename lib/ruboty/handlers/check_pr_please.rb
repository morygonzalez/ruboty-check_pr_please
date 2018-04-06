module Ruboty
  module Handlers
    class CheckPrPlease < Base
      on(
        /(?<label>.+)の\s?(?:Pull Request|PR|プルリク|プルリクエスト)/,
        name: 'check_pr_please',
        description: 'label の Pull Request 一覧を返します'
      )

      on(
        /((?<repo>.*)\s?にある)?\s?(?<label>.+)の\s?(?:Pull Request|PR|プルリク|プルリクエスト)/,
        name: 'check_pr_please',
        description: 'repo にある label の Pull Request 一覧を返します'
      )

      def check_pr_please(message)
        Ruboty::Actions::CheckPrPlease.new(message).call
      rescue Exception => e
        Ruboty.logger.info "#{e.class}: #{e.message}"
      end
    end
  end
end
