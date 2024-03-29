#include <cstring>
#include <iostream>
#include <chrono>

// #include <riscv_vector.h> // Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.6.1 10.2.0
#include <riscv-vector.h> // (V1.12.0) 8.4.0

void asm_case(unsigned char* src, unsigned char* dst, unsigned char* index)
{
    //asm volatile ("vle.v v5, (%0)": : "r" (src));
    //asm volatile ("vrgather.vv v6, v5, v4");
    //asm volatile ("vse.v v6, (a1)");

    //asm volatile ("vle.v v6, (%0)": : "r" (src));
    //asm volatile ("vrgather.vv v10, v6, v4");
    //asm volatile ("vse.v v10, (a1)");

    asm volatile ("vle.v v8, (%0)": : "r" (src));
    asm volatile ("vrgather.vv v12, v8, v4");
    asm volatile ("vse.v v12, (a1)");
}

void asm_loop(unsigned char* src, unsigned char* dst, unsigned char* index, int data_size, int vec_size)
{
    //asm volatile ("vle.v v4, (%0)": : "r" (index));
    asm volatile ("vle.v v4, (%0)": : "r" (index));
    for (int i = 0; i < data_size; i+=vec_size)
    {
        asm_case(src+i, dst+i, index);
    }
}

void intrin_loop(unsigned char* src, unsigned char* dst, unsigned char* index, int data_size, int vec_size)
{   
    // Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.6.1 10.2.0
    // Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1 10.4.0

    // LMUL = 1
    /*vuint8m1_t vec_index = vle8_v_u8m1(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m1_t vec_src = vle8_v_u8m1(src+i, vec_size);
        vuint8m1_t vec_dst = vrgather_vv_u8m1(vec_src, vec_index, vec_size);
        vse8_v_u8m1(dst+i, vec_dst, vec_size);
    }*/

    // LMUL = 2
    /*vuint8m2_t vec_index = vle8_v_u8m2(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m2_t vec_src = vle8_v_u8m2(src+i, vec_size);
        vuint8m2_t vec_dst = vrgather_vv_u8m2(vec_src, vec_index, vec_size);
        vse8_v_u8m2(dst+i, vec_dst, vec_size);
    }*/
    // (V1.12.0) 8.4.0

    // LMUL = 1
    /*vuint8m1_t vec_index = vle_v_u8m1(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m1_t vec_src = vle_v_u8m1(src+i, vec_size);
        vuint8m1_t vec_dst = vrgather_vv_u8m1(vec_src, vec_index, vec_size);
        vse_v_u8m1(dst+i, vec_dst, vec_size);
    }*/

    //LMUL = 2

    vuint8m2_t vec_index = vle_v_u8m2(index, vec_size);
    for (int i = 0; i < data_size; i+=vec_size)
    {
        vuint8m2_t vec_src = vle_v_u8m2(src+i, vec_size);
        vuint8m2_t vec_dst = vrgather_vv_u8m2(vec_src, vec_index, vec_size);
        vse_v_u8m2(dst+i, vec_dst, vec_size);
    }
}

void scalar_loop(unsigned char* src, unsigned char* dst, int data_size)
{
    for (int i = 0; i < data_size; i+=4)
    {
        dst[i] = src[i+2];
        dst[i+1] = src[i+1];
        dst[i+2] = src[i];
        dst[i+3] = src[i+3];
    }
}

void init_vector(unsigned char* src_data, unsigned char* dst_data, unsigned char* ref_data, unsigned char* index, int data_size, int vec_size)
{
    for (int i = 0; i < data_size; i+=4)
    {
        src_data[i] = 1;
        src_data[i+1] = 2;
        src_data[i+2] = 3;
        src_data[i+3] = 4;
    }

    memset(dst_data, 0, data_size);

    for (int i = 0; i < data_size; i+=4)
    {
        ref_data[i] = 3;
        ref_data[i+1] = 2;
        ref_data[i+2] = 1;
        ref_data[i+3] = 4;
    }

}

void validation(unsigned char* dst_data, unsigned char* ref_data, int data_size)
{
    //for (int i = 0; i < 32; i++)
    //    std::cout << dst_data[i] << std::endl;
    for (int i = 0; i < data_size; i++)
    {
        if (dst_data[i] != ref_data[i])
        {
            std::cout << "not equal " << i << " dst_data=" << dst_data[i] << " ref_data=" << ref_data[i] << std::endl;
        }
    }
}

int main()
{
    int width = 1920;
    int height = 1080;
    int data_size = width*height*4;
    int vec_size = 32;

    unsigned char* src_data {new unsigned char [data_size]};
    unsigned char* dst_data {new unsigned char [data_size]};
    unsigned char* ref_data {new unsigned char [data_size]};
    unsigned char* index;

    if (vec_size == 4)
        index = new unsigned char [vec_size] { 2, 1, 0, 3 };
    else if (vec_size == 8)
        index = new unsigned char [vec_size] { 2, 1, 0, 3, 6, 5, 4, 7 };
    else if (vec_size == 16)
        index = new unsigned char [vec_size] { 2, 1, 0, 3, 6, 5, 4, 7, 10, 9, 8, 11, 14, 13, 12, 15 };
    else if (vec_size == 32)
        index = new unsigned char [vec_size] { 2, 1, 0, 3, 6, 5, 4, 7, 10, 9, 8, 11, 14, 13, 12, 15, 18, 17, 16, 19, 22, 21, 20, 23, 26, 25, 24, 27, 30, 29, 28, 31  };

    init_vector(src_data, dst_data, ref_data, index, data_size, vec_size);

    unsigned char* dst_data_1 {new unsigned char [data_size]};
    memset(dst_data_1, 0, data_size);
    auto begin_1 = std::chrono::steady_clock::now();
    scalar_loop(src_data, dst_data_1, data_size);
    auto end_1 = std::chrono::steady_clock::now();
    auto elapsed_ms_1 = std::chrono::duration_cast<std::chrono::milliseconds>(end_1 - begin_1);
    std::cout << "The time: " << elapsed_ms_1.count() << " ms\n";

    auto begin = std::chrono::steady_clock::now();
    size_t vl = vsetvl_e8m2(vec_size);
    //asm_loop(src_data, dst_data, index, data_size, vl);
    intrin_loop(src_data, dst_data, index, data_size, vl);
    auto end = std::chrono::steady_clock::now();
    auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - begin);
    std::cout << "The time: " << elapsed_ms.count() << " ms\n";

    std::cout << vl << std::endl;

    validation(dst_data, ref_data, data_size);

    return 0;
}