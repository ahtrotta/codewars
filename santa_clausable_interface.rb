def is_santa_clausable(obj)
  begin
    obj.say_ho_ho_ho
    obj.distribute_gifts
    obj.go_down_the_chimney
    true
  rescue NoMethodError, RuntimeError
    false
  end
end

class SantaClaus
    def say_ho_ho_ho
        # Ho Ho Ho!
    end

    def distribute_gifts
        # Gifts for all!
    end

    def go_down_the_chimney
        # Whoosh!
    end
end

class NotSantaClaus
    def say_ho_ho_ho
    end
end

p is_santa_clausable(SantaClaus.new)
p is_santa_clausable(NotSantaClaus.new)
