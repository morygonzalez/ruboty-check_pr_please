module Ruboty
  module Handlers
    class CheckPrPlease
      on(
        /(.+)の\s?(?:Pull Request|PR|プルリク)/,
        name: 'check_pr_please',
        description: 'label の Pull Request 一覧を返します'
      )

      def check_pr_please(message)
        Ruboty::Actions::CheckPrPlease.new(message).call
      end
    end
  end
end
