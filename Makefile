SRC ?= W01/examples/e1-simple.c
TARGET = $(basename $(SRC))

CC = gcc
CFLAGS = -Wall -Wextra -lm

ifeq ($(SRC),)
	SRC = W01/examples/ex1-simple.c
endif

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)
