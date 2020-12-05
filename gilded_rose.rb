def update_quality(items)
  items.each do |item|
    update_item_sell_in(item)
    update_item_quality(item)
  end
end

def update_item_sell_in(item) 
  if item.name != 'Sulfuras, Hand of Ragnaros'
    item.sell_in -= 1
  end
end

def update_aged_brie_quality(aged_brie_item)
  if aged_brie_item.sell_in < 0
    if aged_brie_item.quality < 50
      aged_brie_item.quality += 1
    end
  end
  if aged_brie_item.quality < 50
    aged_brie_item.quality += 1
  end
end

def update_backstage_passes_quality(backstage_passes_item)
  if backstage_passes_item.sell_in < 0
    backstage_passes_item.quality = 0
    return
  end
  if backstage_passes_item.quality < 50
    backstage_passes_item.quality += 1
    if backstage_passes_item.sell_in < 10
      if backstage_passes_item.quality < 50
        backstage_passes_item.quality += 1
      end
    end
    if backstage_passes_item.sell_in < 5
      if backstage_passes_item.quality < 50
        backstage_passes_item.quality += 1
      end
    end
  end
end

def update_item_quality(item)
  if item.name == "Aged Brie"
    update_aged_brie_quality(item)
    return
  end
  if item.name == "Backstage passes to a TAFKAL80ETC concert"
    update_backstage_passes_quality(item)
    return
  end
  if item.name == "NORMAL ITEM"
    if item.sell_in < 0
      item.quality -= 1
    end
    if item.quality > 0
      item.quality -= 1
    end
  end
end

# DO NOT CHANGE THINGS BELOW -----------------------------------------

Item = Struct.new(:name, :sell_in, :quality)

# We use the setup in the spec rather than the following for testing.
#
# Items = [
#   Item.new("+5 Dexterity Vest", 10, 20),
#   Item.new("Aged Brie", 2, 0),
#   Item.new("Elixir of the Mongoose", 5, 7),
#   Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
#   Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
#   Item.new("Conjured Mana Cake", 3, 6),
# ]

