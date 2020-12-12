class Item 

    attr_accessor :name, :sell_in, :quality

    def initialize(name, sell_in, quality)
        @name = name
        @sell_in = sell_in
        @quality = quality
    end

    def update
        update_item_sell_in
        update_item_quality
    end
    def update_item_sell_in
        if @name != 'Sulfuras, Hand of Ragnaros'
          @sell_in -= 1
        end
      end
      
      def update_aged_brie_quality
        if @sell_in < 0
          if @quality < 50
            @quality += 1
          end
        end
        if @quality < 50
          @quality += 1
        end
      end
      
      def update_backstage_passes_quality
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
      
      def update_normal_item_quality
        if @sell_in < 0
          if @quality > 0
            @quality -= 1
          end
        end
        if @quality > 0
          @quality -= 1
        end
      end
      
      def update_item_quality
        if @name == "Aged Brie"
          update_aged_brie_quality
          return
        end
        if @name == "Backstage passes to a TAFKAL80ETC concert"
          update_backstage_passes_quality
          return
        end
        if @name == "NORMAL ITEM"
          update_normal_item_quality
        end
    end
end