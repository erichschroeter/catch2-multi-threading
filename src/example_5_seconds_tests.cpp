
#include <catch2/catch.hpp>

#include <windows.h>

SCENARIO( "Verify example tests that lasts 5 seconds", "[example_5_seconds_tests.cpp]" )
{
    for ( unsigned int i = 0; i < 5; ++i )
    {
        Sleep(1000);
        REQUIRE(false);
    }
}
