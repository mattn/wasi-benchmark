const std = @import("std");

fn fib(n: u64) u64 {
    if (n == 0 or n == 1) return n;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() anyerror!void {
    std.debug.print("{}\n", .{fib(40)});
}
