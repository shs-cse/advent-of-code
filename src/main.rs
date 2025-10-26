#[path = "../temp/puzzle.rs"]
mod puzzle;

use std::fs::File;
use std::io::{self, BufReader, prelude::*};

fn main() -> io::Result<()> {
    let file = File::open("temp/puzzle.txt")?;
    let reader = BufReader::new(file);

    for buff in reader.lines() {
        puzzle::process(&buff?);
    }
    puzzle::solution();

    Ok(())
}
