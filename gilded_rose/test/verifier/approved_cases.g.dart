const approvedCases = [
  {"initial":{"name":"foo","sellIn":-1,"quality":-1},"expected":{"name":"foo","sellIn":-2,"quality":-1}},
  {"initial":{"name":"foo","sellIn":-1,"quality":0},"expected":{"name":"foo","sellIn":-2,"quality":0}},
  {"initial":{"name":"foo","sellIn":-1,"quality":1},"expected":{"name":"foo","sellIn":-2,"quality":0}},
  {"initial":{"name":"foo","sellIn":-1,"quality":49},"expected":{"name":"foo","sellIn":-2,"quality":47}},
  {"initial":{"name":"foo","sellIn":-1,"quality":50},"expected":{"name":"foo","sellIn":-2,"quality":48}},
  {"initial":{"name":"foo","sellIn":0,"quality":-1},"expected":{"name":"foo","sellIn":-1,"quality":-1}},
  {"initial":{"name":"foo","sellIn":0,"quality":0},"expected":{"name":"foo","sellIn":-1,"quality":0}},
  {"initial":{"name":"foo","sellIn":0,"quality":1},"expected":{"name":"foo","sellIn":-1,"quality":0}},
  {"initial":{"name":"foo","sellIn":0,"quality":49},"expected":{"name":"foo","sellIn":-1,"quality":47}},
  {"initial":{"name":"foo","sellIn":0,"quality":50},"expected":{"name":"foo","sellIn":-1,"quality":48}},
  {"initial":{"name":"foo","sellIn":5,"quality":-1},"expected":{"name":"foo","sellIn":4,"quality":-1}},
  {"initial":{"name":"foo","sellIn":5,"quality":0},"expected":{"name":"foo","sellIn":4,"quality":0}},
  {"initial":{"name":"foo","sellIn":5,"quality":1},"expected":{"name":"foo","sellIn":4,"quality":0}},
  {"initial":{"name":"foo","sellIn":5,"quality":49},"expected":{"name":"foo","sellIn":4,"quality":48}},
  {"initial":{"name":"foo","sellIn":5,"quality":50},"expected":{"name":"foo","sellIn":4,"quality":49}},
  {"initial":{"name":"foo","sellIn":6,"quality":-1},"expected":{"name":"foo","sellIn":5,"quality":-1}},
  {"initial":{"name":"foo","sellIn":6,"quality":0},"expected":{"name":"foo","sellIn":5,"quality":0}},
  {"initial":{"name":"foo","sellIn":6,"quality":1},"expected":{"name":"foo","sellIn":5,"quality":0}},
  {"initial":{"name":"foo","sellIn":6,"quality":49},"expected":{"name":"foo","sellIn":5,"quality":48}},
  {"initial":{"name":"foo","sellIn":6,"quality":50},"expected":{"name":"foo","sellIn":5,"quality":49}},
  {"initial":{"name":"foo","sellIn":10,"quality":-1},"expected":{"name":"foo","sellIn":9,"quality":-1}},
  {"initial":{"name":"foo","sellIn":10,"quality":0},"expected":{"name":"foo","sellIn":9,"quality":0}},
  {"initial":{"name":"foo","sellIn":10,"quality":1},"expected":{"name":"foo","sellIn":9,"quality":0}},
  {"initial":{"name":"foo","sellIn":10,"quality":49},"expected":{"name":"foo","sellIn":9,"quality":48}},
  {"initial":{"name":"foo","sellIn":10,"quality":50},"expected":{"name":"foo","sellIn":9,"quality":49}},
  {"initial":{"name":"foo","sellIn":11,"quality":-1},"expected":{"name":"foo","sellIn":10,"quality":-1}},
  {"initial":{"name":"foo","sellIn":11,"quality":0},"expected":{"name":"foo","sellIn":10,"quality":0}},
  {"initial":{"name":"foo","sellIn":11,"quality":1},"expected":{"name":"foo","sellIn":10,"quality":0}},
  {"initial":{"name":"foo","sellIn":11,"quality":49},"expected":{"name":"foo","sellIn":10,"quality":48}},
  {"initial":{"name":"foo","sellIn":11,"quality":50},"expected":{"name":"foo","sellIn":10,"quality":49}},
  {"initial":{"name":"Aged Brie","sellIn":-1,"quality":-1},"expected":{"name":"Aged Brie","sellIn":-2,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":-1,"quality":0},"expected":{"name":"Aged Brie","sellIn":-2,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":-1,"quality":1},"expected":{"name":"Aged Brie","sellIn":-2,"quality":3}},
  {"initial":{"name":"Aged Brie","sellIn":-1,"quality":49},"expected":{"name":"Aged Brie","sellIn":-2,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":-1,"quality":50},"expected":{"name":"Aged Brie","sellIn":-2,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":0,"quality":-1},"expected":{"name":"Aged Brie","sellIn":-1,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":0,"quality":0},"expected":{"name":"Aged Brie","sellIn":-1,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":0,"quality":1},"expected":{"name":"Aged Brie","sellIn":-1,"quality":3}},
  {"initial":{"name":"Aged Brie","sellIn":0,"quality":49},"expected":{"name":"Aged Brie","sellIn":-1,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":0,"quality":50},"expected":{"name":"Aged Brie","sellIn":-1,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":5,"quality":-1},"expected":{"name":"Aged Brie","sellIn":4,"quality":0}},
  {"initial":{"name":"Aged Brie","sellIn":5,"quality":0},"expected":{"name":"Aged Brie","sellIn":4,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":5,"quality":1},"expected":{"name":"Aged Brie","sellIn":4,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":5,"quality":49},"expected":{"name":"Aged Brie","sellIn":4,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":5,"quality":50},"expected":{"name":"Aged Brie","sellIn":4,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":6,"quality":-1},"expected":{"name":"Aged Brie","sellIn":5,"quality":0}},
  {"initial":{"name":"Aged Brie","sellIn":6,"quality":0},"expected":{"name":"Aged Brie","sellIn":5,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":6,"quality":1},"expected":{"name":"Aged Brie","sellIn":5,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":6,"quality":49},"expected":{"name":"Aged Brie","sellIn":5,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":6,"quality":50},"expected":{"name":"Aged Brie","sellIn":5,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":10,"quality":-1},"expected":{"name":"Aged Brie","sellIn":9,"quality":0}},
  {"initial":{"name":"Aged Brie","sellIn":10,"quality":0},"expected":{"name":"Aged Brie","sellIn":9,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":10,"quality":1},"expected":{"name":"Aged Brie","sellIn":9,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":10,"quality":49},"expected":{"name":"Aged Brie","sellIn":9,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":10,"quality":50},"expected":{"name":"Aged Brie","sellIn":9,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":11,"quality":-1},"expected":{"name":"Aged Brie","sellIn":10,"quality":0}},
  {"initial":{"name":"Aged Brie","sellIn":11,"quality":0},"expected":{"name":"Aged Brie","sellIn":10,"quality":1}},
  {"initial":{"name":"Aged Brie","sellIn":11,"quality":1},"expected":{"name":"Aged Brie","sellIn":10,"quality":2}},
  {"initial":{"name":"Aged Brie","sellIn":11,"quality":49},"expected":{"name":"Aged Brie","sellIn":10,"quality":50}},
  {"initial":{"name":"Aged Brie","sellIn":11,"quality":50},"expected":{"name":"Aged Brie","sellIn":10,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-2,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-2,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-2,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-2,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-2,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":0,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":0,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":0,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":0,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":0,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":-1,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":4,"quality":2}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":4,"quality":3}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":4,"quality":4}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":4,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":4,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":6,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":1}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":6,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":2}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":6,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":3}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":6,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":6,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":5,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":9,"quality":1}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":9,"quality":2}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":9,"quality":3}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":9,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":9,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":11,"quality":-1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":0}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":11,"quality":0},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":1}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":11,"quality":1},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":2}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":11,"quality":49},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":50}},
  {"initial":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":11,"quality":50},"expected":{"name":"Backstage passes to a TAFKAL80ETC concert","sellIn":10,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":-1,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":0,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":5,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":6,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":10,"quality":50}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":-1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":-1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":0},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":0}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":1},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":1}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":49},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":49}},
  {"initial":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":50},"expected":{"name":"Sulfuras, Hand of Ragnaros","sellIn":11,"quality":50}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":-1,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":-2,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":-1,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":-2,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":-1,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":-2,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":-1,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":-2,"quality":45}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":-1,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":-2,"quality":46}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":0,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":-1,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":0,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":-1,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":0,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":-1,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":0,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":-1,"quality":45}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":0,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":-1,"quality":46}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":5,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":4,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":5,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":4,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":5,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":4,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":5,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":4,"quality":47}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":5,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":4,"quality":48}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":6,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":5,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":6,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":5,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":6,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":5,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":6,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":5,"quality":47}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":6,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":5,"quality":48}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":10,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":9,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":10,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":9,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":10,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":9,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":10,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":9,"quality":47}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":10,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":9,"quality":48}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":11,"quality":-1},"expected":{"name":"Conjured Mana Cake","sellIn":10,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":11,"quality":0},"expected":{"name":"Conjured Mana Cake","sellIn":10,"quality":0}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":11,"quality":1},"expected":{"name":"Conjured Mana Cake","sellIn":10,"quality":-1}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":11,"quality":49},"expected":{"name":"Conjured Mana Cake","sellIn":10,"quality":47}},
  {"initial":{"name":"Conjured Mana Cake","sellIn":11,"quality":50},"expected":{"name":"Conjured Mana Cake","sellIn":10,"quality":48}}
];
