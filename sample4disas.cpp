#include <riscv_vector.h>

void intrin_loop(unsigned char* src, unsigned char* dst, unsigned char* index, int data_size, int vec_size)
{   
    // Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.6.1 10.2.0
    // Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1 10.4.0
    vuint8m1_t vec_index = vle8_v_u8m1(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m1_t vec_src = vle8_v_u8m1(src+i, vec_size);
        vuint8m1_t vec_dst = vrgather_vv_u8m1(vec_src, vec_index, vec_size);
        vse8_v_u8m1(dst+i, vec_dst, vec_size);
    }
    // (V1.12.0) 8.4.0
    /*vuint8m1_t vec_index = vle_v_u8m1(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m1_t vec_src = vle_v_u8m1(src+i, vec_size);
        vuint8m1_t vec_dst = vrgather_vv_u8m1(vec_src, vec_index, vec_size);
        vse_v_u8m1(dst+i, vec_dst, vec_size);
    }*/
}

int main()
{
    return 0;
}