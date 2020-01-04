all: main

main: main.o GPIO.o I2C.o
      g++ -o main main.cpp GPIO.o I2C.o
GPIO.o: GPIO.cpp
      g++ -c GPIO.cpp
I2C.o: I2C.cpp
      g++ -c I2C.cpp
clean:  
      rm -rf *o main
