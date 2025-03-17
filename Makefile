CXX=g++
CXXFLAGS=-Wall -Wextra
TARGET=prime-check  

all: $(TARGET)

$(TARGET): main.cpp
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.cpp

clean:
	rm -f $(TARGET)
