# メソッドを呼び出した時の探索方法
class BaseClass
    def hello
        :hello
    end
end

# base_objectの直接のクラスのBaseClassを参照する
base_object = BaseClass.new
base_object.hello