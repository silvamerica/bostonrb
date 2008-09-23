recaptcha_config = File.join ENV['HOME'], '.bostonrb', 'recaptcha.rb'
if File.exists?(recaptcha_config)
  load recaptcha_config
else
  ENV['RECAPTCHA_PUBLIC_KEY']  = '0000000000000000000000000000000000000000'
  ENV['RECAPTCHA_PRIVATE_KEY'] = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
  Ambethia::ReCaptcha::SKIP_VERIFY_ENV << 'development'
end

# Ambethia::ReCaptcha::SKIP_VERIFY_ENV = %w(development test)