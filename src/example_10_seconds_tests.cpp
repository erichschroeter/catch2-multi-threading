
#include <catch2/catch.hpp>

#include <windows.h>

SCENARIO( "Verify example tests that lasts 10 seconds", "[example_10_seconds_tests.cpp]" )
{
    for ( unsigned int i = 0; i < 10; ++i )
    {
        Sleep(1000);
        REQUIRE(true);
    }
}
