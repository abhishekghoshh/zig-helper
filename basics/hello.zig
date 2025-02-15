const std = @import("std");

pub fn main() !void{
    // directly from the std.debug
    std.debug.print("Hello world with debug\n",.{});

    // getting the standout writer from io then printing on that
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello {s}\n",.{"world"});
}


// run and build command :
// zig build-exe basics/hello.zig -femit-bin=out/hello && out/hello 