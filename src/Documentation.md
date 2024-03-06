# Memory Allocator Documentation

Welcome to the Memory Allocator documentation! This document provides information on the functions used in the code and how to use them.

## Table of Contents

1. [Introduction](#introduction)
2. [Functions](#functions)
    - [initialize_memory_allocator](#initialize-memory-allocator)
    - [allocate_memory_blocks](#allocate-memory-blocks)
    - [deallocate_memory_blocks](#deallocate-memory-blocks)
3. [Usage](#usage)
4. [Requirements](#requirements)

## Introduction <a name="introduction"></a>

The Memory Allocator is a custom memory management software implemented in assembly language. It provides efficient memory allocation and deallocation functionalities within a pre-allocated memory pool.

## Functions <a name="functions"></a>

### initialize_memory_allocator <a name="initialize-memory-allocator"></a>

```assembly
initialize_memory_allocator:
```
### allocate_memory_blocks <a name="allocate-memory-blocks"></a>
```assembly
allocate_memory_blocks:
```
### deallocate_memory_blocks <a name="deallocate-memory-blocks"></a>
```assembly
deallocate_memory_blocks:
```
## Usage

To use the Memory Allocator functions in your assembly code, follow these steps:

1. **Include the assembly file**: Make sure to include the assembly file containing the Memory Allocator functions in your project.

2. **Call the functions**: Use the provided function names (`initialize_memory_allocator`, `allocate_memory_blocks`, `deallocate_memory_blocks`) in your code to initialize the allocator and perform memory allocation and deallocation.

    ```assembly
    ; Example: Initialize the memory allocator
    call initialize_memory_allocator
    ```

    ```assembly
    ; Example: Allocate 5 memory blocks
    mov ecx, 5
    call allocate_memory_blocks
    ```

    ```assembly
    ; Example: Deallocate memory block at eax
    call deallocate_memory_blocks
    ```

3. **Provide necessary inputs**: Depending on the function, provide the necessary inputs such as the number of memory blocks to allocate.

4. **Handle return values**: Some functions may return values or indicate success/failure through registers. Make sure to handle these appropriately in your code.

5. **Error handling**: Implement error handling to handle allocation failures or invalid memory accesses.

# Requirements

Before using the Memory Allocator project, ensure that you meet the following requirements:

1. **Assembly Language Environment**:
   - You need access to an assembly language environment to compile and run the code. NASM (Netwide Assembler) is commonly used for assembling assembly language code.

2. **Memory Pool Size and Block Size Definitions**:
   - Define the size of the memory pool and the size of each memory block according to your requirements. These values should be specified in the code or provided as input parameters.

3. **Access to Memory Allocator Functions**:
   - Ensure that you have access to the `initialize_memory_allocator`, `allocate_memory_blocks`, and `deallocate_memory_blocks` functions provided by the Memory Allocator project.

4. **Error Handling**:
   - Implement error handling mechanisms in your code to handle allocation failures or invalid memory accesses, as appropriate.







