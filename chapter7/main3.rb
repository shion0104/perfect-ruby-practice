# Procオブジェクトの作り方

# lambdaメソッド
lambda_obj = lambda { 1 }

p lambda_obj.call

# lambdaメソッドのシンタックスシュガー
inc = ->(x) { x + 1}
p inc.(1)