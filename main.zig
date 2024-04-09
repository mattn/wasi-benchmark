const std = @import("std");

fn fib(n: u32) u32 {
    if (n == 0 or n == 1) return n;
    return fib(n - 1) + fib(n - 2);
}

pub fn main() anyerror!void {
    const allocator = std.heap.page_allocator;
    var args = try std.process.argsWithAllocator(allocator);
    _ = args.skip();
    var str_num = args.next().?;
    var num = try std.fmt.parseInt(u32, str_num, 10);
    std.debug.print("{}\n", .{fib(num)});
}
