fn move_until_basement(buff: &str) -> usize {
    let mut floor: i32 = 0;
    for (i, ch) in buff.chars().enumerate() {
        if ch == '(' {
            floor += 1;
        } else if ch == ')' {
            floor -= 1;
        }
        if floor == -1 {
            return i + 1;
        }
    }
    return 0;
}

pub fn process(buff: &str) {
    println!("{}", move_until_basement(&buff));
}

pub fn solution() {}
