module main

import vweb
// import db.pg
import db.sqlite

pub struct App {
	vweb.Context // pub:
	// 	db_handle vweb.DatabasePool[pg.DB] [required]
	// pub mut:
	// 	db pg.DB
pub mut:
	db sqlite.DB
}

// pub fn App.new(db_handle vweb.DatabasePool[pg.DB]) &App {
// 	return &App{
// 		db_handle: db_handle
// 	}
// }

pub fn App.new(db sqlite.DB) &App {
	return &App{
		db: db
	}
}
