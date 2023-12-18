//#ifdef __riscv_v_intrinsic
#include <riscv-vector.h>
//#endif /* __riscv_v_intrinsic */
//#include <iostream>
//#include <chrono>

/*void v_load_deinterleave(const unsigned char* ptr, v_int8x16& a, v_int8x16& b, v_int8x16& c, v_int8x16& d)
{
    vint8m1x4_t ret = ?(ptr, 16);
    a.val = vget_u8m1x4_u8m1(ret, 0);
    b.val = vget_u8m1x4_u8m1(ret, 1);
    c.val = vget_u8m1x4_u8m1(ret, 2);
    d.val = vget_u8m1x4_u8m1(ret, 3);
}

void v_store_interleave(unsigned char* ptr, const v_int8x16& a, const v_int8x16& b, const v_int8x16& c, const v_int8x16& d)
{
    vint8m1x4_t ret = vundefined_u8m1x4();           
    ret = vset_u8m1x4(ret, 0, a.val);
    ret = vset_u8m1x4(ret, 1, b.val);
    ret = vset_u8m1x4(ret, 2, c.val);
    ret = vset_u8m1x4(ret, 3, d.val);
    ?(ptr, ret, 16);
}*/

/*void v_load_deinterleave(const unsigned char* ptr, vuint8m1_t& a, vuint8m1_t& b, vuint8m1_t& c, vuint8m1_t& d)
{
    vuint8m1x4_t ret = vlseg4e_v_u8m1x4(ptr, 16);
    a = vget_u8m1x4_u8m1(ret, 0);
    b = vget_u8m1x4_u8m1(ret, 1);
    c = vget_u8m1x4_u8m1(ret, 2);
    d = vget_u8m1x4_u8m1(ret, 3);
}

void v_store_interleave(unsigned char* ptr, const vuint8m1_t& a, const vuint8m1_t& b, const vuint8m1_t& c, const vuint8m1_t& d)
{
    vuint8m1x4_t ret = vundefined_u8m1x4();           
    ret = vset_u8m1x4(ret, 0, a);
    ret = vset_u8m1x4(ret, 1, b);
    ret = vset_u8m1x4(ret, 2, c);
    ret = vset_u8m1x4(ret, 3, d);
    vsseg4e_v_u8m1x4(ptr, ret, 16);
}*/

/*void cvt_rvv(const unsigned char* src, unsigned char* dst, int n)
{
    int scn = 4, dcn = 4, bi = 2;
    int i = 0;
    const int vsize = 16;

    for(; i <= n-vsize;i += vsize, src += vsize*scn, dst += vsize*dcn)
    {
        vuint8m1_t a, b, c, d;
        v_load_deinterleave(src, a, b, c, d);
        auto t = a; a = c; c = t; // swap(a, c);
        v_store_interleave(dst, c, b, a, d);
    }
}*/

void cvt(const unsigned char* src, unsigned char* dst, int n)
{
    int scn = 4, dcn = 4, bi = 2;
    int i = 0;
    const int vsize = 16;

    for ( ; i < n; i++, src += scn, dst += dcn )
    {
        unsigned char t0 = src[0], t1 = src[1], t2 = src[2];
        dst[bi  ] = t0;
        dst[1]    = t1;
        dst[bi^2] = t2;
        unsigned char d = src[3];
        dst[3] = d;
    }
}

int main()
{
    const unsigned char* src_data { new unsigned char [1920 * 4 * 1080] };
    size_t src_step = 7680;
    unsigned char * dst_data { new unsigned char [1920 * 4 * 1080] };;
    size_t dst_step = 7680;
    int width = 1920;
    int height = 1080;
    int depth = 0;
    int start_range = 0;
    int end_range = 61;

    const unsigned char* yS = src_data + static_cast<size_t>(start_range) * src_step;
    unsigned char* yD = dst_data + static_cast<size_t>(end_range) * dst_step;

    //auto begin = std::chrono::steady_clock::now();
    for( int i = start_range; i < end_range; ++i, yS += src_step, yD += dst_step )
        cvt(reinterpret_cast<const unsigned char*>(yS), reinterpret_cast<unsigned char*>(yD), width);
    //auto end = std::chrono::steady_clock::now();
    //auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(end - begin);
    //std::cout << "The time: " << elapsed_ms.count() << " ms\n";

    return 0;
}