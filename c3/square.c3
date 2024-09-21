module foo;
// import std::io;

fn int square(int x) @export @extern("square")
{
    int sq=  x * x + 1;
    return sq;
}