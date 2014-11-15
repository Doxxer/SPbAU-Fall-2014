#ifndef __LOGGER_HPP_
#define __LOGGER_HPP_

#include <sstream>
#include <iostream>

#ifdef DEBUG
#define LOG std::cout
#else
#define LOG std::stringstream()
#endif

#endif