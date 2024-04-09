fn fib(n: u64) -> u64 {
    return match n {
        0 => 0,
        1 => 1,
        _ => fib(n - 2) + fib(n - 1),
    };
}

fn main() {
    println!("{}", fib(40));
}
