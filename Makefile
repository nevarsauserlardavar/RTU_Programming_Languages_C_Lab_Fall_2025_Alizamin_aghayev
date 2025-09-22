

# Makefile for Lab 1 & Lab 2
CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -O2
LDFLAGS =
BUILD_DIR = bin
SRC_DIR = src
LAB2_DIR = lab2

PROGRAMS = $(BUILD_DIR)/hello $(BUILD_DIR)/calculator $(BUILD_DIR)/formats \
    $(BUILD_DIR)/lab2_1 $(BUILD_DIR)/lab2_2 $(BUILD_DIR)/lab2_3

all: $(PROGRAMS)

$(BUILD_DIR)/hello: $(SRC_DIR)/hello.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/calculator: $(SRC_DIR)/calculator.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/formats: $(SRC_DIR)/format_specifiers.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

# Lab 2 programs
$(BUILD_DIR)/lab2_1: $(LAB2_DIR)/lab2_1.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/lab2_2: $(LAB2_DIR)/lab2_2.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/lab2_3: $(LAB2_DIR)/lab2_3.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

# Shortcuts
hello: $(BUILD_DIR)/hello
calculator: $(BUILD_DIR)/calculator
formats: $(BUILD_DIR)/formats
lab2_1: $(BUILD_DIR)/lab2_1
lab2_2: $(BUILD_DIR)/lab2_2
lab2_3: $(BUILD_DIR)/lab2_3

# Run targets
run-hello: hello
	./$(BUILD_DIR)/hello

run-calculator: calculator
	./$(BUILD_DIR)/calculator

run-formats: formats
	./$(BUILD_DIR)/formats

run-lab2_1: lab2_1
	./$(BUILD_DIR)/lab2_1

run-lab2_2: lab2_2
	./$(BUILD_DIR)/lab2_2

run-lab2_3: lab2_3
	./$(BUILD_DIR)/lab2_3

clean:
	rm -rf $(BUILD_DIR)/*.o $(PROGRAMS)
