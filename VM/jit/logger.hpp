#ifndef __LOGGER_HPP_
#define __LOGGER_HPP_

#include <iostream>

#ifdef DEBUG
    #define LOG(message) std::cout << message << std::endl;
    #define LOG_Visitor(message) LOG(message)
#else
    #define LOG(message)
    #define LOG_Visitor(message)
#endif

#endif