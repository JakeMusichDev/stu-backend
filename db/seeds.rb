sellers = Seller.create(
  [
    {name: 'jake', email: 'jake@boyoy.com', password: 'dragons'},
    {name: 'tina', email: 'tina@boyoy.com', password: 'lumpy'},
    {name: 'Steve', email: 'steve@boyoy.com', password: 'crumpet'}
  ]
)

collectors = Collector.create(
  [
    {name: 'Rich Guy', email: 'rich@rich.com', password: 'password'},
    {name: 'Heir Apparnt', email: 'heir@rich.com', password: 'stir'},
    {name: 'Filth Staux', email: 'steve@staux.com', password: 'phrase'}
  ]
)



auctions = Auction.create(
  [
    {seller_id: '1', lot_title: 'hokey', lot_description: 'big bronze', lot_year: 2016, lot_medium: 'bronze', lot_dimensions: '12ftx12ft', start_date: '', end_date: '', reserve: 500.00, start_date: Time.now.to_formatted_s(:short), end_date: Time.now.tomorrow},
    {seller_id: '2', lot_title: 'LumpDawg', lot_description: 'big bronze', lot_year: 1016, lot_medium: 'bronze', lot_dimensions: '12ftx12ft', start_date: '', end_date: '', reserve: 500.00, selling_price: '', winning_bid: ''},
    {seller_id: '3', lot_title: 'The View of GoldenView Views', lot_description: 'oil', lot_year: 1987, lot_medium: 'painting', lot_dimensions: '12ftx12ft', start_date: '', end_date: '', reserve: 500.00, selling_price: '', winning_bid: ''},
    {seller_id: '1', lot_title: 'Chocolate Stalk', lot_description: 'oil', lot_year: 1987, lot_medium: 'painting', lot_dimensions: '12ftx12ft', start_date: '', end_date: '', reserve: 500.00, selling_price: '', winning_bid: ''}
  ]
)

bids = Bid.create(
  [
    {bid_price: 1000, collector_id: 1, auction_id: 2},
    {bid_price: 1020, collector_id: 1, auction_id: 2},
    {bid_price: 1080, collector_id: 1, auction_id: 2},
    {bid_price: 2000, collector_id: 1, auction_id: 2},
    {bid_price: 4010, collector_id: 1, auction_id: 2},
    {bid_price: 5000, collector_id: 1, auction_id: 2},
    {bid_price: 5500, collector_id: 1, auction_id: 2},
    {bid_price: 5600, collector_id: 1, auction_id: 2},
    {bid_price: 10000, collector_id: 1, auction_id: 3},
    {bid_price: 13000, collector_id: 1, auction_id: 3},
    {bid_price: 15000, collector_id: 1, auction_id: 3},
    {bid_price: 19000, collector_id: 1, auction_id: 3},
  ]
)
