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
        if @name == "NORMAL ITEM"
          update_normal_item_quality
        end
    end
end