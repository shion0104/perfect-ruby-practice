# extendedされた時にフックされるイベント

module ExtendedCount
    class << self
        def extended(obj)
            @extended ||= []
            @extended << obj
        end

        def extended_objects
            @extended
        end

        def extended_count
            @extended ? @extended.count : 0
        end
    end
end

ExtendedCount.extended_count

5.times do
    Object.new.extend ExtendedCount
end

ExtendedCount.extended_count

ExtendedCount.extended_objects