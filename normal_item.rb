require 'item'

class NormalItem < Item
    def update
        @sell_in -= 1
        if @sell_in < 0
          if @quality > 0
            @quality -= 1
          end
        end
        if @quality > 0
          @quality -= 1
        end
    end
end