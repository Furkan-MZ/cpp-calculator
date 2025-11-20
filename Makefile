   CXX = g++
CXXFLAGS = -Wall -std=c++11

# Yeni Klasör Yapısı Tanımlamaları
INC_DIR = include
SRC_DIR = src
BUILD_DIR = build
TARGET = $(BUILD_DIR)/calculator

SOURCES = $(SRC_DIR)/main.cpp $(SRC_DIR)/calculator.cpp

# -I flag ile derleyiciye baslik dosyalarinin yerini soyluyoruz
$(TARGET): $(SOURCES)
    $(CXX) $(CXXFLAGS) -I$(INC_DIR) -o $(TARGET) $(SOURCES)

clean:
    rm -f $(TARGET)
    rm -rf $(BUILD_DIR)/*.o

.PHONY: clean
