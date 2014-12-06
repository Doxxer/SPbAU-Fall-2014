#ifndef UTIL_HPP
#define UTIL_HPP

// thx to stanford.edu
unsigned long upper_power_of_two(unsigned long v) {
    v--;
    v |= v >> 1;
    v |= v >> 2;
    v |= v >> 4;
    v |= v >> 8;
    v |= v >> 16;
    v++;
    return v;
}

#endif /* end of include guard: UTIL_HPP */

