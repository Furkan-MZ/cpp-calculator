CXX = g++
CXXFLAGS = -Wall -std=c++11
TARGET = calculator
SOURCES = main.cpp calculator.cpp

$(TARGET): $(SOURCES)
    $(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCES)

clean:
    rm -f $(TARGET)

.PHONY: clean	
