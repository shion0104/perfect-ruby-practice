# クラスやモジュールからインスタンスメソッドを削除する

# Module#remove_methodを使用すれば、指定されたクラスのメソッドを削除することができる

class RemovedMethodClass
    def first_method; end
    def second_method; end
    def third_method; end
    def forth_method; end
end

RemovedMethodClass.instance_methods(false)
# [:forth_method, :first_method, :second_method, :third_method]

RemovedMethodClass.class_eval do
    remove_method :second_method, :third_method
    end

RemovedMethodClass.instance_methods(false)
# [:forth_method, :first_method]
