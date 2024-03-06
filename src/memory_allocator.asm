section .data
    mem_pool_size  equ 1024
    block_size  equ 32
    allocation_bitmap resb mem_pool_size / block_size

section .text
    global allocate_memory_blocks
    global deallocate_memory_blocks

allocate_memory_blocks:
