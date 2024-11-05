# スタブ
# スタブはメソッドの実行を別の処理に置き換える

obj = Object.new
stub(obj).foo {"foo"}
stub(obj).bar

obj.foo
# 出力　foo

obj.bar 
# 出力　nil



# # モック
# スタブにそのメソッドが呼び出された可動化の検証を追加したものがモック。

onj = Object.new
mock(obj).foo(3) { |count| "foo" * count } # obj.fooに引数として3を呼び出してないとエラー

# 引数で結果を加工できる
obj.foo(3) => "foofoofoo"

mock(obj).bar.with_any_args.times(2)              # obj.barをどんな引数でもいいが2回呼び出していること
mock(obj).fizz.with_any_args.at_most(3)           # obj.barを引数なしで多くとも3回呼び出していること
mock(obj).buz.with_no_args.at_latest(2)           # obj.barを引数なしで少なくとも2回呼び出していること
mock(obj).par.with_no_args.times(2..4)            # obj.barを引数なしで2~4回呼び出していること
mock(obj).hoge(is_a(Time), anyting)               # obj.hogeの第一引数Timeのインスタンス、第二引数に任意のオブジェクトを渡していること
mock(obj).fuga(duck_type(:write))                 # obj.fugaにwriteメソッドを持ったオブジェクトを呼び出していること
mock(obj)sample1(satisfy { |arg| atg_even? })     # obj.sample1に偶数を渡して呼び出していること
mock(obj).sample2(hash_including(red: "#FF0000")) # obj.sample2にred: "#FF0000"を含むhashを渡して呼び出していること
mock(obj.sample3(/Ruby/))                         # obj.sample3に/Ruby/にマッチすつ文字列を渡して呼び出していること


# プロキシ
# スタブやモックを使ってメソッドを置き換える際に、元の実装の出力結果を利用して出力結果を加工できる

hoge = "hoge"
stub.proxy(hoge).to_s { |str| str.upcase }
mock.proxy(hoge).size { |size| size * 2}
hoge.to_s => "HOGE"
hoge.size => 8
