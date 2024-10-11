class InstanceCountClass
    @@instance_count = 0

    def self.instance_count
        @@instance_count
    end

    def initialize
        @@instance_count += 1
    end
end

InstanceCountClass.instance_count

5.times do
    InstanceCountClass.new
end

p InstanceCountClass.instance_count

#クラス変数を使ったカウンタクラスを継承して使う

class NewInstanceCountClass < InstanceCountClass
end

p NewInstanceCountClass.instance_count 

5.times do
    NewInstanceCountClass.new
end

p InstanceCountClass.instance_count
p NewInstanceCountClass.instance_count

# 継承前の実行したカウントもカウントして、それにプラスして数値が加算される