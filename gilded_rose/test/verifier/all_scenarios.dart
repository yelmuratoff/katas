const List<List<dynamic>> fooTests = [
  ["foo", -1, -1, "foo, -2, -1"],
  ["foo", -1, 0, "foo, -2, 0"],
  ["foo", -1, 1, "foo, -2, 0"],
  ["foo", -1, 49, "foo, -2, 47"],
  ["foo", -1, 50, "foo, -2, 48"],
  ["foo", 0, -1, "foo, -1, -1"],
  ["foo", 0, 0, "foo, -1, 0"],
  ["foo", 0, 1, "foo, -1, 0"],
  ["foo", 0, 49, "foo, -1, 47"],
  ["foo", 0, 50, "foo, -1, 48"],
  ["foo", 5, -1, "foo, 4, -1"],
  ["foo", 5, 0, "foo, 4, 0"],
  ["foo", 5, 1, "foo, 4, 0"],
  ["foo", 5, 49, "foo, 4, 48"],
  ["foo", 5, 50, "foo, 4, 49"],
  ["foo", 6, -1, "foo, 5, -1"],
  ["foo", 6, 0, "foo, 5, 0"],
  ["foo", 6, 1, "foo, 5, 0"],
  ["foo", 6, 49, "foo, 5, 48"],
  ["foo", 6, 50, "foo, 5, 49"],
  ["foo", 10, -1, "foo, 9, -1"],
  ["foo", 10, 0, "foo, 9, 0"],
  ["foo", 10, 1, "foo, 9, 0"],
  ["foo", 10, 49, "foo, 9, 48"],
  ["foo", 10, 50, "foo, 9, 49"],
  ["foo", 11, -1, "foo, 10, -1"],
  ["foo", 11, 0, "foo, 10, 0"],
  ["foo", 11, 1, "foo, 10, 0"],
  ["foo", 11, 49, "foo, 10, 48"],
  ["foo", 11, 50, "foo, 10, 49"]
];

const List<List<dynamic>> agedBrieTests = [
  ["Aged Brie", -1, -1, "Aged Brie, -2, 1"],
  ["Aged Brie", -1, 0, "Aged Brie, -2, 2"],
  ["Aged Brie", -1, 1, "Aged Brie, -2, 3"],
  ["Aged Brie", -1, 49, "Aged Brie, -2, 50"],
  ["Aged Brie", -1, 50, "Aged Brie, -2, 50"],
  ["Aged Brie", 0, -1, "Aged Brie, -1, 1"],
  ["Aged Brie", 0, 0, "Aged Brie, -1, 2"],
  ["Aged Brie", 0, 1, "Aged Brie, -1, 3"],
  ["Aged Brie", 0, 49, "Aged Brie, -1, 50"],
  ["Aged Brie", 0, 50, "Aged Brie, -1, 50"],
  ["Aged Brie", 5, -1, "Aged Brie, 4, 0"],
  ["Aged Brie", 5, 0, "Aged Brie, 4, 1"],
  ["Aged Brie", 5, 1, "Aged Brie, 4, 2"],
  ["Aged Brie", 5, 49, "Aged Brie, 4, 50"],
  ["Aged Brie", 5, 50, "Aged Brie, 4, 50"],
  ["Aged Brie", 6, -1, "Aged Brie, 5, 0"],
  ["Aged Brie", 6, 0, "Aged Brie, 5, 1"],
  ["Aged Brie", 6, 1, "Aged Brie, 5, 2"],
  ["Aged Brie", 6, 49, "Aged Brie, 5, 50"],
  ["Aged Brie", 6, 50, "Aged Brie, 5, 50"],
  ["Aged Brie", 10, -1, "Aged Brie, 9, 0"],
  ["Aged Brie", 10, 0, "Aged Brie, 9, 1"],
  ["Aged Brie", 10, 1, "Aged Brie, 9, 2"],
  ["Aged Brie", 10, 49, "Aged Brie, 9, 50"],
  ["Aged Brie", 10, 50, "Aged Brie, 9, 50"],
  ["Aged Brie", 11, -1, "Aged Brie, 10, 0"],
  ["Aged Brie", 11, 0, "Aged Brie, 10, 1"],
  ["Aged Brie", 11, 1, "Aged Brie, 10, 2"],
  ["Aged Brie", 11, 49, "Aged Brie, 10, 50"],
  ["Aged Brie", 11, 50, "Aged Brie, 10, 50"]
];

const List<List<dynamic>> backstagePassesTests = [
  ["Backstage passes to a TAFKAL80ETC concert", -1, -1, "Backstage passes to a TAFKAL80ETC concert, -2, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", -1, 0, "Backstage passes to a TAFKAL80ETC concert, -2, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", -1, 1, "Backstage passes to a TAFKAL80ETC concert, -2, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", -1, 49, "Backstage passes to a TAFKAL80ETC concert, -2, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", -1, 50, "Backstage passes to a TAFKAL80ETC concert, -2, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 0, -1, "Backstage passes to a TAFKAL80ETC concert, -1, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 0, 0, "Backstage passes to a TAFKAL80ETC concert, -1, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 0, 1, "Backstage passes to a TAFKAL80ETC concert, -1, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 0, 49, "Backstage passes to a TAFKAL80ETC concert, -1, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 0, 50, "Backstage passes to a TAFKAL80ETC concert, -1, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 5, -1, "Backstage passes to a TAFKAL80ETC concert, 4, 2"],
  ["Backstage passes to a TAFKAL80ETC concert", 5, 0, "Backstage passes to a TAFKAL80ETC concert, 4, 3"],
  ["Backstage passes to a TAFKAL80ETC concert", 5, 1, "Backstage passes to a TAFKAL80ETC concert, 4, 4"],
  ["Backstage passes to a TAFKAL80ETC concert", 5, 49, "Backstage passes to a TAFKAL80ETC concert, 4, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 5, 50, "Backstage passes to a TAFKAL80ETC concert, 4, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 6, -1, "Backstage passes to a TAFKAL80ETC concert, 5, 1"],
  ["Backstage passes to a TAFKAL80ETC concert", 6, 0, "Backstage passes to a TAFKAL80ETC concert, 5, 2"],
  ["Backstage passes to a TAFKAL80ETC concert", 6, 1, "Backstage passes to a TAFKAL80ETC concert, 5, 3"],
  ["Backstage passes to a TAFKAL80ETC concert", 6, 49, "Backstage passes to a TAFKAL80ETC concert, 5, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 6, 50, "Backstage passes to a TAFKAL80ETC concert, 5, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 10, -1, "Backstage passes to a TAFKAL80ETC concert, 9, 1"],
  ["Backstage passes to a TAFKAL80ETC concert", 10, 0, "Backstage passes to a TAFKAL80ETC concert, 9, 2"],
  ["Backstage passes to a TAFKAL80ETC concert", 10, 1, "Backstage passes to a TAFKAL80ETC concert, 9, 3"],
  ["Backstage passes to a TAFKAL80ETC concert", 10, 49, "Backstage passes to a TAFKAL80ETC concert, 9, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 10, 50, "Backstage passes to a TAFKAL80ETC concert, 9, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 11, -1, "Backstage passes to a TAFKAL80ETC concert, 10, 0"],
  ["Backstage passes to a TAFKAL80ETC concert", 11, 0, "Backstage passes to a TAFKAL80ETC concert, 10, 1"],
  ["Backstage passes to a TAFKAL80ETC concert", 11, 1, "Backstage passes to a TAFKAL80ETC concert, 10, 2"],
  ["Backstage passes to a TAFKAL80ETC concert", 11, 49, "Backstage passes to a TAFKAL80ETC concert, 10, 50"],
  ["Backstage passes to a TAFKAL80ETC concert", 11, 50, "Backstage passes to a TAFKAL80ETC concert, 10, 50"],
];

const List<List<dynamic>> sulfurasTests = [
  ["Sulfuras, Hand of Ragnaros", -1, -1, "Sulfuras, Hand of Ragnaros, -1, -1"],
  ["Sulfuras, Hand of Ragnaros", -1, 0, "Sulfuras, Hand of Ragnaros, -1, 0"],
  ["Sulfuras, Hand of Ragnaros", -1, 1, "Sulfuras, Hand of Ragnaros, -1, 1"],
  ["Sulfuras, Hand of Ragnaros", -1, 49, "Sulfuras, Hand of Ragnaros, -1, 49"],
  ["Sulfuras, Hand of Ragnaros", -1, 50, "Sulfuras, Hand of Ragnaros, -1, 50"],
  ["Sulfuras, Hand of Ragnaros", 0, -1, "Sulfuras, Hand of Ragnaros, 0, -1"],
  ["Sulfuras, Hand of Ragnaros", 0, 0, "Sulfuras, Hand of Ragnaros, 0, 0"],
  ["Sulfuras, Hand of Ragnaros", 0, 1, "Sulfuras, Hand of Ragnaros, 0, 1"],
  ["Sulfuras, Hand of Ragnaros", 0, 49, "Sulfuras, Hand of Ragnaros, 0, 49"],
  ["Sulfuras, Hand of Ragnaros", 0, 50, "Sulfuras, Hand of Ragnaros, 0, 50"],
  ["Sulfuras, Hand of Ragnaros", 5, -1, "Sulfuras, Hand of Ragnaros, 5, -1"],
  ["Sulfuras, Hand of Ragnaros", 5, 0, "Sulfuras, Hand of Ragnaros, 5, 0"],
  ["Sulfuras, Hand of Ragnaros", 5, 1, "Sulfuras, Hand of Ragnaros, 5, 1"],
  ["Sulfuras, Hand of Ragnaros", 5, 49, "Sulfuras, Hand of Ragnaros, 5, 49"],
  ["Sulfuras, Hand of Ragnaros", 5, 50, "Sulfuras, Hand of Ragnaros, 5, 50"],
  ["Sulfuras, Hand of Ragnaros", 6, -1, "Sulfuras, Hand of Ragnaros, 6, -1"],
  ["Sulfuras, Hand of Ragnaros", 6, 0, "Sulfuras, Hand of Ragnaros, 6, 0"],
  ["Sulfuras, Hand of Ragnaros", 6, 1, "Sulfuras, Hand of Ragnaros, 6, 1"],
  ["Sulfuras, Hand of Ragnaros", 6, 49, "Sulfuras, Hand of Ragnaros, 6, 49"],
  ["Sulfuras, Hand of Ragnaros", 6, 50, "Sulfuras, Hand of Ragnaros, 6, 50"],
  ["Sulfuras, Hand of Ragnaros", 10, -1, "Sulfuras, Hand of Ragnaros, 10, -1"],
  ["Sulfuras, Hand of Ragnaros", 10, 0, "Sulfuras, Hand of Ragnaros, 10, 0"],
  ["Sulfuras, Hand of Ragnaros", 10, 1, "Sulfuras, Hand of Ragnaros, 10, 1"],
  ["Sulfuras, Hand of Ragnaros", 10, 49, "Sulfuras, Hand of Ragnaros, 10, 49"],
  ["Sulfuras, Hand of Ragnaros", 10, 50, "Sulfuras, Hand of Ragnaros, 10, 50"],
  ["Sulfuras, Hand of Ragnaros", 11, -1, "Sulfuras, Hand of Ragnaros, 11, -1"],
  ["Sulfuras, Hand of Ragnaros", 11, 0, "Sulfuras, Hand of Ragnaros, 11, 0"],
  ["Sulfuras, Hand of Ragnaros", 11, 1, "Sulfuras, Hand of Ragnaros, 11, 1"],
  ["Sulfuras, Hand of Ragnaros", 11, 49, "Sulfuras, Hand of Ragnaros, 11, 49"],
  ["Sulfuras, Hand of Ragnaros", 11, 50, "Sulfuras, Hand of Ragnaros, 11, 50"],
];