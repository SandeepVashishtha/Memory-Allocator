# Memory Allocator

The Memory Allocator is a custom memory management software implemented in assembly language. It provides efficient memory allocation and deallocation functionalities within a pre-allocated memory pool, aiming to optimize memory utilization and performance compared to standard memory allocation functions.

## Features

- **Dynamic Memory Allocation**: Allows dynamic allocation of memory blocks of fixed size from a pre-allocated memory pool.
- **Memory Pool Management**: Manages a contiguous block of memory, subdividing it into fixed-size blocks for allocation.
- **Allocation Bitmap**: Utilizes an allocation bitmap to track the allocation status of individual memory blocks.
- **Error Handling**: Provides basic error handling to detect and handle allocation failures and invalid memory accesses.

## Usage

1. **Allocation**: Use the `allocate_memory_blocks` function to allocate a specified number of memory blocks from the memory pool.
2. **Deallocation**: Implement a function to deallocate previously allocated memory blocks when they are no longer needed.
3. **Error Handling**: Handle allocation failures and invalid memory accesses to ensure robustness and stability.

