section .data
    mem_pool_size  equ 1024
    block_size  equ 32
    allocation_bitmap resb mem_pool_size / block_size

section .text
    global intialize_memory_allocator
    global allocate_memory_blocks
    global deallocate_memory_blocks


intialize_memory_allocator:
    mov ecx, mem_pool_size
    mov edi, allocation_bitmap
    xor eax, eax
.loop:
    mov[edi], al
    add edi, block_size
    loop .loop
    ret

allocate_memory_blocks:
    pushad
all general-purpose registers
    mov esi, allocation_bitmap
    mov esx, mem_pool_size/block_size
    xor ebx, ebx

calculate_index:
    cmp eax, esi
    je deallocate_block 
    add esi, block_size
    inc ebx
    loop calculate_index