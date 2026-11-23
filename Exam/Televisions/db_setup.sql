CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT NOT NULL UNIQUE CHECK ( catalog_number GLOB 'TV-?*' ),
    brand TEXT NOT NULL CHECK ( brand IN ('Samsung', 'LG', 'Sony') ),
    model TEXT NOT NULL,
    screen_size REAL NOT NULL CHECK ( screen_size > 0 ),
    resolution TEXT NOT NULL CHECK ( resolution IN ('4K', '8K', 'Full HD') ),
    price REAL NOT NULL CHECK ( price >= 0 ),
    stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK ( stock_quantity >= 0 ),
    release_year INTEGER NOT NULL,
    smart_tv BOOLEAN NOT NULL,
    os TEXT DEFAULT NULL,
    panel_type TEXT NOT NULL CHECK ( panel_type IN ('OLED', 'QLED', 'LED') ),
    CHECK (
        (smart_tv = 1 AND os IS NOT NULL) OR
        (smart_tv = 0 AND os IS NULL)
        )
);