require_relative  'item'

class BackstagePasses < Item
    def update
        @sell_in -= 1
        if @sell_in < 0
          @quality = 0
          return
        end
        if @quality < 50
          @quality += 1
          if @sell_in < 10
            if @quality < 50
              @quality += 1
            end
          end
          if @sell_in < 5
            if @quality < 50
              @quality += 1
            end
          end
        end
    end
end