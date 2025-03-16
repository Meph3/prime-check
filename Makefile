CXX=g++
CXXFLAGS=-Wall -Wextra
<<<<<<< HEAD
TARGET=prime_checker
=======
TARGET=prime-check
>>>>>>> 565229c (lab2)

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

clean:
	rm -f $(TARGET)
