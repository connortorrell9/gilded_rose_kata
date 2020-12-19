require_relative  'item'

class AgedBrie < Item

    def initialize(sell_in, quality)
      super('Aged Brie', sell_in, quality)
    end

    def smelly?
      @quality > 30
    end

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