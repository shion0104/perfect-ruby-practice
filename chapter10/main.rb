class HaveInstanceVal
    def initialize
        @foo = 1
        @bar = 2
    end
end

have_instance_val = HaveInstanceVal.new

# インスタンス変数の取得
have_instance_val.instance_variables

# object#instance_variable_define?メソッドを使ってインスタンス変数が定義されているか確認できる
have_instance_val.instance_variable_defined? :@foo
have_instance_val.instance_variable_defined? "@foo" #文字列でも可

# インスタンス変数の値を参照
have_instance_val.instance_variable_get :@foo

# インスタンス変数の値を更新
have_instance_val.instance_variable_set :@foo, 2 #@fooの値を更新
have_instance_val.instance_variable_get :@foo

have_instance_val.instance_variable_set :@buzz, 100 #存在していない値も設定できる
have_instance_val.instance_variable_get :@buzz
