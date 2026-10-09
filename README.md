# Lab-5
gcc helloworld.c -o helloworld_O0 && gcc -O4 helloworld.c -o helloworld_O4 && gcc helloworld.c -o helloWorldC && g++ helloWorldCpp.cpp -o helloWorldCpp && gcc while_loop.c -o while_loop && gcc max_array.s -o max_array && ./helloWorldC && ./helloWorldCpp && ./while_loop && ./max_array && echo "SUCCESS: All programs compiled and executed cleanly!"

├── README.md             # Complete Lab Report, Code Files, and Execution Guide
├── helloworld.c          # C source code with global variables and loop (Part IA & IB)
├── helloworld_O0.s       # Assembly output generated with -O0 (Unoptimized)
├── helloworld_O4.s       # Assembly output generated with -O4 (Fully Optimized)
├── helloWorldC.s         # Assembly code for C "Hello World" (Part II)
├── helloWorldCpp.cpp     # C++ OOP "Hello World" source code with Greeting class (Part II)
├── helloWorldCpp.s       # Assembly code for C++ OOP "Hello World" (Part II)
├── while_loop.c          # C source code for while loop demonstration (Part III)
├── while_loop.s          # Assembly output for while loop demonstration (Part III)
└── max_array.s           # Standalone x86 assembly program to find array max (Part III)
