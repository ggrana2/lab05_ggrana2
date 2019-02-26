#include "shapes.h"
#include "shapeFuncs.h"
#include "tddFuncs.h"
   
   
   
   
int main() {
   
struct Box b1, b2;
  
    initBox(&b1,3.0,4.0,5.0, 6.0);
    assertEquals("(3,4, 5, 6)", boxToString(b1), "pointToString(p1)");
  
    initBox(&b2,3.14159,6.2831853071,5,4);
    assertEquals("(3.14,6.28,5,4)", boxToString(b2), "pointToString(p2)");
    assertEquals("(3,6,7,6)", boxToString(b2,1), "pointToString(p2,1)");
    assertEquals("(3.142,6.283,7,9)", boxToString(b2,4), "pointToString(p2,4)");
    assertEquals("(3.1416,6.2832),10,13", boxToString(b2,5), "pointToString(p2,5)");
 
 
   return 0;
 }
                        
