CXX = g++
# CXX = clang++

CXXFLAGS= -Wall -Wno-uninitialized

BINARIES=distanceBetweenTest initPointTest pointsApproxEqualTest boxesApproxEqualTest \
	initBoxTest areaOfBoxTest pointToStringTest boxToStringTest

COMMON_OBJECTS=tddFuncs.o utility.o shapeFuncs.o

all: ${BINARIES}

tests: ${BINARIES}
	./distanceBetweenTest
	./initPointTest
	./pointsApproxEqualTest
	./boxesApproxEqualTest
	./initBoxTest
	./areaOfBoxTest
	./pointToStringTest
	./boxToStringTest


distanceBetweenTest: distanceBetweenTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

initPointTest: initPointTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

pointsApproxEqualTest: pointsApproxEqualTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@


boxesApproxEqualTest: boxesApproxEqualTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

areaOfBoxTest: areaOfBoxTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

initBoxTest: initBoxTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

pointToStringTest: pointToStringTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@
boxtoStringTest: boxToStringTest.o $(COMMON_OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -O $@
clean:
	/bin/rm -f ${BINARIES} *.o
