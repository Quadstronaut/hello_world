//
// Author: Quadstronaut
// Date: January 9, 2026
// Description: Hello World example for a repository.
//

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"World");
}

