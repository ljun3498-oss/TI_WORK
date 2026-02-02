//=============================================================================
// File: motion_control_types.h
// Description: Type definitions for Windows compilation
//=============================================================================

#ifndef MOTION_CONTROL_TYPES_H
#define MOTION_CONTROL_TYPES_H

// Standard C types mapping for TI C2000 types
#ifndef float32_t
typedef float float32_t;
#endif

#ifndef uint16_t
typedef unsigned short uint16_t;
#endif

#ifndef uint32_t
typedef unsigned int uint32_t;
#endif

#ifndef bool
typedef unsigned char bool;
#define true 1
#define false 0
#endif

// Windows DLL Export
#ifdef _WIN32
    #ifdef BUILD_DLL
        #define DLL_EXPORT __declspec(dllexport)
    #else
        #define DLL_EXPORT __declspec(dllimport)
    #endif
#else
    #define DLL_EXPORT
#endif

#endif // MOTION_CONTROL_TYPES_H


