
#include <catch2/catch.hpp>

#include <windows.h>

SCENARIO( "Verify example tests that lasts 1 seconds", "[example_1_seconds_tests.cpp]" )
{
    for ( unsigned int i = 0; i < 1; ++i )
    {
        Sleep(1000);
        REQUIRE(true);
    }
}
