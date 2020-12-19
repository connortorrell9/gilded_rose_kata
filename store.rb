require_relative  'aged_brie'
require_relative  'normal_item'
require_relative  'backstage_passes'

class Store
    def initialize
        @items = []
        10.times { @items.push(NormalItem.new("that thing", rand(1..10), rand(1..3))) }
    end

    def report_inventory
        @items.each { |item| puts "#{item.name} needs to sell in #{item.sell_in} days"}
    end

    def stock_shelves
        @items = @items.map do |item|
            item.update
            if item.quality == 0 
                NormalItem.new(item.name, rand(1..10), rand(1..3))
            else
                item 
            end
        end
    end
end