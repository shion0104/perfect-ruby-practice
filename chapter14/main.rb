# bundlerについて

# 以下のように環境ごとにインストールするライブラリを環境ごとに分けることができる
group :development, :test do
    gem "rspec-rails"
    gem "pry"
  end
  
  group :production do
    gem "pg"
  end
end


# withoutオプション:特定の環境に対してインストールを行いたくない場合に使用
bundle install --without development test

# jobsオプションスレッド数を指定して並列にインストールすることが可能になる
bundle install --jobs 4