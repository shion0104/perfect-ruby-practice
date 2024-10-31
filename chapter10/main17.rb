# メソッドが追加された際、発火する処理の実装
# singleton_method_addedをオーバーライドする


class AddedMethodClass
    private
    def singleton_method_added(method_name)
        puts "added_singleton_method: #{method_name}"
    end
end

obj = AddedMethodClass.new
def obj.add_from_singleton_method; end