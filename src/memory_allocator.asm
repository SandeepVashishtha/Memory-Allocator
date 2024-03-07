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


.find_block:
    mov al, [edi]
    cmp al, 0
    jne .next_block
    mov byte [edi], 1
    add edi, block_size
    dec edx
    cmp edx, 0

    je . allcation_complete
    jmp .find_block


.next_block
    add edi, block_size
    jmp .find_block


.allcation_complete:
    mov eax, edi
    sub eax, mem_pool_size
    ret

calculate_index:
    cmp eax, esi
    je deallocate_block 
    add esi, block_size
    inc ebx
    loop calculate_index