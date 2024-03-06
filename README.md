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

## Getting Started

To get started with the Memory Allocator, follow these steps:

1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/SandeepVashishtha/Memory-Allocator.git

2. **Navigate to the Repository Directory:**
   ```bash
   cd Memory-Allocator

3. **Compile the Assembly Code**
    ```bash
    nasm -f elf src/memory_allocator.asm -o build/memory_allocator.o
    ld build/memory_allocator.o -o build/memory_allocator

4. **Run the Executable**
   ```bash
   ./build/memory_allocator


## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Here's how you can contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/add-new-feature`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature/add-new-feature`).
6. Create a new Pull Request.

For major changes, please open an issue first to discuss what you would like to change.




