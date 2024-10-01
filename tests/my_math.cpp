#include <gtest/gtest.h>
#include "../my_math.h"


TEST(AddTest, SimpleTest) {
  EXPECT_EQ(2, add(1, 1));
}
