mod api;
mod cli;
use std::future::IntoFuture;

use crate::api::testing;

fn main() {
    let args: Vec<String> = std::env::args().collect();

    if args.len() == 1 {
        println!("Usage: commit-ai <message>");
        return;
    }

    let query = &args[1];
    let filename = &args[2];

    println!("{:?}", args);
}
