# Ruboty::CheckPrPlease

ruboty plugin that demand you to review labeled Pull Requests on GitHub repository.

![](http://resources.portalshit.net/ruboty-check_pr_please_1.png)  
![](http://resources.portalshit.net/ruboty-check_pr_please_2.png)

Blog entry introduces this gem (in Japanese).

[Pull Request のレビューを促す ruboty プラグイン - portal shit!](http://portalshit.net/2015/03/25/ruboty-check-pr-please)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-check_pr_please'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-check_pr_please

## Usage

1. Write just just like `gem 'ruboty-check_pr_please', github: 'morygonzalez/ruboty-check_pr_please'` in your ruboty bot's Gemfile.
  - You need to install ruboty-cron.gem if you want this gem to work periodically.
2. Write `GITHUB_ACCESS_TOKEN='yourtokengoeshere'` and `GITHUB_REPOSITORY='owner/repo'` to your ruboty bot's .env file.
3. Deploy ruboty bot.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruboty-check_pr_please/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
