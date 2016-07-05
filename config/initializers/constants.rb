HERO_SIZES = {
  :full => "2000x1200>",
  :large => "1000x500>",
  :medium => "600x400>",
  :medium_thumb => "300x300#",
  :small_thumb => "100x100#"
}

TILE_SIZES = {
  :wide => "1200x600>",
  :large => "800x800#",
  :large_wide => "1200x600#",
  :medium => "800x600#",
  :small => "400x400#",
  :thumb => "100x100#"
}

PICTURE_SIZES = {
  :wide => "1000x600>",
  :thumb_large => "400x300#",
  :thumb_medium => "200x150#",
  :thumb_small => "100x100#"
}

BUBBLE_SIZES = {
  :thumb_large => "400x400#",
  :thumb_medium => "200x200#",
  :thumb_small => "100x100#"
}

ROOM_SIZES = {
  :full => "2000x1200>",
  :large => "900x450>",
  :medium => "500x350>",
  :thumb_medium => "300x300#",
  :thumb_small => "100x100#"
}

CONVERT_OPTIONS = {
  :wide => "-quality 80 -interlace Plane",
  :full => "-quality 80 -interlace Plane",
  :large => "-quality 80 -interlace Plane",
  :large_wide => "-quality 80 -interlace Plane",
  :medium => "-quality 70 -interlace Plane",
  :small => "-quality 70 -interlace Plane",
  :medium_thumb => "-quality 70 -interlace Plane",
  :small_thumb => "-quality 70 -interlace Plane",
  :thumb => "-quality 70 -interlace Plane",
  :thumb_large => "-quality 70 -interlace Plane",
  :thumb_medium => "-quality 70 -interlace Plane",
  :thumb_small => "-quality 70 -interlace Plane",
}


BUBBLE_TYPES = ['video','audio','image','info']

ROOM_PRICE_TYPES = ['per_villa','per_room','per_person']


CARDINALS = ['th','st','nd','rd','th','th']


# ED info
ED_SECRETS = {
  en: {
    ed_website: 40,
    ed_passkey: '-75MVH{4D35!w*O'
  },
  fr: {
    ed_website: 41,
    ed_passkey: 'Da?3=17+`dk7Xx3'
  }
}

CURRENCIES = {
  en: {
    currency: 'USD',
    conversion: 0.1
  },
  fr: {
    currency: 'EUR',
    conversion: 0.074 # 1/ 13.5
  }
}

CURRENCIES_LIST = ['ZAR','EUR','USD']

FILLER_CARDS = ['pricing', 'routes']

# When to visit
VISITABLE_COLORS = ['green','light-green','yellow', 'red']
VISITABLE_ICONS = ['sunny','rainy','cloudy']
