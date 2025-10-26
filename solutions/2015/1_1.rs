pub fn process(buff: &str) {
    let count_up = buff.matches('(').count();
    println!("{}", 2*count_up - buff.len());
}

pub fn solution() {}
