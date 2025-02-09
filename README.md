# Assembly - Memory Access Violation: Uninitialized or Invalid Register Values

This repository demonstrates a common error in assembly programming: memory access violations due to uninitialized or invalid register values.

The `bug.asm` file contains code that attempts to access memory using an address derived from registers that may not be properly initialized. This can lead to segmentation faults or other unexpected behavior.

The `bugSolution.asm` file shows a corrected version of the code, ensuring register values are properly initialized before memory access takes place.  It also includes bounds checking to ensure memory access is always within a safe range.