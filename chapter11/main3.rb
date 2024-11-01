# Rakeタスクについて

# タスクの定義

task :hello do
    puts "Hello, Rake!"
end

# 呼び出し
rake hello

# 名前空間を使ったタスクの管理
namespace :greet do
    task :morning do
        puts 'Good morning!'
    end

    task :evening do
        puts 'Good eveming!'
    end
end


# 呼び出し
rake greet:morning
rake greet:evening

# 順番を指定して実行
task :prepare do
    puts 'Preparing...'
  end
  
  task :build => :prepare do
    puts 'Building...'
  end

#   prepareが実行された後にbuildタスクが実行される

# 引数を渡す
task :greet, [:name] do |t, args|
    puts "Hello, #{args[:name]}!"
end

rake greet ['Alice']
# => Hello, Alice!


