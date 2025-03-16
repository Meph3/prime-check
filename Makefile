CXX=g++
CXXFLAGS=-Wall -Wextra
TARGET=prime_checker

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

clean:
	rm -f $(TARGET)
