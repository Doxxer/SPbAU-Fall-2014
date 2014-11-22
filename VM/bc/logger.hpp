#ifndef __LOGGER_HPP_
#define __LOGGER_HPP_

#include <sstream>
#include <iostream>


// TODO передать это!!!

static std::stringstream devnull;

#ifdef DEBUG
#define LOG std::cout
#define LOG_Visitor devnull
#else
#define LOG devnull
#define LOG_Visitor devnull
#endif

#endif