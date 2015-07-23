    # table items
    # t.string   "name"
    # t.string   "age_group"
    # t.string   "weather"
    # t.string   "activity"
    # t.integer  "quantity"
  
Item.destroy_all

Item.create([{name: 'Pacifier', age_group: 'infant', quantity: '2'}])
Item.create([{name: 'Jacket', age_group: 'toddler', weather: 'cold', quantity: '1'}])
Item.create([{name: 'Bathing Suit', age_group: 'all', activity: 'swimming', quantity: '1'}])
Item.create([{name: 'Diapers', age_group: 'all'}])
Item.create([{name: 'Wipes', age_group: 'all'}])
Item.create([{name: 'Backup Outfit', age_group: 'all', quantity: '1'}])
Item.create([{name: 'Outfits', age_group: 'all', quantity: '1'}])
Item.create([{name: 'Formal Outfit', age_group: 'all', activity: 'wedding/funeral', quantity: '1'}])
Item.create([{name: 'Gloves', age_group: 'all', weather: 'cold', quantity: '1'}])