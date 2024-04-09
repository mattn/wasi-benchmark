use std::env;

fn fib(n: u64) -> u64 {
    return match n {
        0 => 0,
        1 => 1,
        _ => fib(n - 2) + fib(n - 1),
    };
}

fn main() {
    let args: Vec<String> = env::args().collect();

    let number: u64 = match args.len() {
        2 => match args[1].parse() {
            Ok(n) => n,
            Err(_) => {
                eprintln!("error: argument not an integer");
                return;
            }
        },
        _ => {
            eprintln!("error: argument not given");
            return;
        }
    };
    println!("{}", fib(number));
}
