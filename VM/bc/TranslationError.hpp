#ifndef TRANSLATIONERROR_HPP
#define TRANSLATIONERROR_HPP

#include <string>
#include <stdexcept>

namespace mathvm {

    class TranslationError : public std::logic_error {
    public:
        TranslationError(const std::string &message, uint32_t position = 0)
                : std::logic_error(message), position(position) {
        }

        uint32_t where() const {
            return position;
        }

    private:
        uint32_t position;
    };

} //mathvm

#endif // TRANSLATIONERROR_HPP
