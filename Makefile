all: hello

hello: main.obj factorial.obj hello.obj
	link.exe /OUT:hello.exe main.obj factorial.obj hello.obj

main.obj: main.cpp
	cl.exe  /I /X /c main.cpp

factorial.obj: factorial.cpp
	cl.exe  /I /X /c factorial.cpp  

hello.obj: hello.cpp
	cl.exe  /I /X /c hello.cpp

clean:
	del *.o hello.exe
