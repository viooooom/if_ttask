# Определить компилятор C++ и флаги
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -pthread

# Определить библиотеку Google Test и флаги
GTEST_DIR = ./googletest
GTEST_INCLUDE = -I$(GTEST_DIR)/include
GTEST_LIB = -L$(GTEST_DIR)/lib -lgtest

# Определить исходные файлы и объектные файлы
SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)

# Определить тестовые файлы и объектные файлы
TEST_SRC = $(wildcard tests/*.cpp)
TEST_OBJ = $(TEST_SRC:.cpp=.o)

# Определить имя исполняемого файла
EXEC = my_executable

# Определить имя исполняемого файла для тестов
TEST_EXEC = my_test_executable

# Компиляция исходных файлов
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(GTEST_INCLUDE) -c $< -o $@

# Компиляция тестовых файлов
tests/%.o: tests/%.cpp
	$(CXX) $(CXXFLAGS) $(GTEST_INCLUDE) -c $< -o $@

# Связывание объектных файлов для создания исполняемого файла
$(EXEC): $(OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Связывание объектных файлов для создания исполняемого файла для тестов
$(TEST_EXEC): $(OBJ) $(TEST_OBJ)
	$(CXX) $(CXXFLAGS) $^ $(GTEST_LIB) -o $@

# Запуск тестов
test: $(TEST_EXEC)
	./$(TEST_EXEC)

# Очистка
clean:
	rm -f $(OBJ) $(TEST_OBJ) $(EXEC) $(TEST_EXEC)
	