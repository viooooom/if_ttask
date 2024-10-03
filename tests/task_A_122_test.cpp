#include <gtest/gtest.h>
#include "../task_A_122.h"
TEST(task1, SimpleTest) 
{
    EXPECT_EQ(true, task1(10.305));
}

TEST(task2, SimpleTest) 
{
    EXPECT_EQ(true, task2(10.585));
}

TEST(task3, SimpleTest) 
{
    EXPECT_EQ(5, task3(10.585));
}

TEST(task4, SimpleTest) 
{
    EXPECT_EQ(5, task4(10.555));
}

TEST(task5, SimpleTest) 
{
    EXPECT_EQ(true, task5(10.595));
}

TEST(task6, SimpleTest) 
{
    EXPECT_EQ(15, task6(10.555));
}

TEST(task7, SimpleTest) 
{
    EXPECT_EQ(true, task7(10.5555));
}

TEST(task8, SimpleTest) 
{
    EXPECT_EQ(true, task8(10.555));
}