pub fn process(buff: &str) {
    let up = buff.matches('(').count();
    let down = buff.matches(')').count();
    println!("{}", up - down);
}

pub fn solution() {}
