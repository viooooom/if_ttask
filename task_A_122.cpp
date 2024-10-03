#include <iostream>
#include <cmath>

int getFractionalPart(double number, int precision)
{
    int count = std::pow(10, precision);
    int temp = number * count;
    return temp % count;
}

bool task1(double value)
{
    int temp = getFractionalPart(value, 3);
    int a = temp % 10;
    int b = (temp / 10) % 10;
    int c = (temp / 100) % 10;
    return a == 0 || b == 0 || c == 0;
}