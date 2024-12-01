#include <dlfcn.h>

// Declare the mangled names of the functions
extern "C" {

bool _ZN16EvDevTouchDriver9isPoweredEv() {
    return true;
}

int _ZN15DisplayStateOff5stateEv() {
    return 3;
}

}
