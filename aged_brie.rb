require 'item'

class AgedBrie < Item
    def update
        @sell_in -= 1
        if @sell_in < 0
          if @quality < 50
            @quality += 1
          end
        end
        if @quality < 50
          @quality += 1
        end
      end
end