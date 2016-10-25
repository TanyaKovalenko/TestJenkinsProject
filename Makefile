all: hello

hello: main.obj factorial.obj hello.obj
	link.exe /OUT:hello.exe main.obj factorial.obj hello.obj

main.o: main.cpp
	cl.exe /c main.cpp

factorial.o: factorial.cpp
	cl.exe /c factorial.cpp  

hello.o: hello.cpp
	cl.exe /c hello.cpp

clean:
	del *.o hello.exe
