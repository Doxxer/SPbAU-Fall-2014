#include <sstream>
#include <iostream>

#ifdef DEBUG
#define LOG std::cout
#else
#define LOG std::stringstream()
#endif