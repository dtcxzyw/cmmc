/* -*- mode: C -*-
 *
 * Copyright (c) 2007-2011, 2013, 2014 The University of Utah
 * All rights reserved.
 *
 * This file is part of `csmith', a random generator of C programs.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *   * Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *
 *   * Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

static uint32_t crc32_tab[256];
static uint32_t crc32_context = 0xFFFFFFFF;

static void crc32_gentab(void) {
    uint32_t crc;
    const uint32_t poly = 0xEDB88320;
    int i, j;

    for(i = 0; i < 256; i++) {
        crc = i;
        for(j = 8; j > 0; j--) {
            if(crc & 1) {
                crc = (crc >> 1) ^ poly;
            } else {
                crc >>= 1;
            }
        }
        crc32_tab[i] = crc;
    }
}

static void crc32_byte(uint8_t b) {
    crc32_context = ((crc32_context >> 8) & 0x00FFFFFF) ^ crc32_tab[(crc32_context ^ b) & 0xFF];
}

const char lut[] = "0123456789ABCDEF";
static void put_hex(uint32_t hash) {
    if(hash >= 16) {
        put_hex(hash >> 4);
    }
    putch(lut[(int32_t)(hash & 15)]);
}

static void print_hash(char vname[], uint32_t hash) {
    int i = 0;
    while(vname[i]) {
        putch(vname[i]);
        ++i;
    }
    putch(32);
    put_hex(hash);
    putch(10);
}
static void crc32_8bytes(uint32_t val) {
    crc32_byte((val >> 0) & 0xff);
    crc32_byte((val >> 8) & 0xff);
    crc32_byte((val >> 16) & 0xff);
    crc32_byte((val >> 24) & 0xff);
    crc32_byte((val >> 32) & 0xff);
    crc32_byte((val >> 40) & 0xff);
    crc32_byte((val >> 48) & 0xff);
    crc32_byte((val >> 56) & 0xff);
}

static void transparent_crc(uint32_t val, char vname[], int flag) {
    crc32_8bytes(val);
    if(flag) {
        print_hash(vname, crc32_context ^ 0xFFFFFFFF);
    }
}

static void transparent_crc_bytes(char ptr[], int nbytes, char vname[], int flag) {
    int i;
    for(i = 0; i < nbytes; i++) {
        crc32_byte(ptr[i]);
    }
    if(flag) {
        print_hash(vname, crc32_context ^ 0xFFFFFFFF);
    }
}

static void platform_main_begin(void) {}
static void platform_main_end(uint32_t x, int flag) {
    if(flag) {
        print_hash("checksum", x);
    }
}

static void putdim(int x) {
    putint(x);
    putch(10);
}

static void putdim2(int x, int y) {
    putint(x);
    putch(32);
    putint(y);
    putch(10);
}

static void putdim3(int x, int y, int z) {
    putint(x);
    putch(32);
    putint(y);
    putch(32);
    putint(z);
    putch(10);
}

/*****************************************************************************/

static int8_t safe_unary_minus_func_int8_t_s(int8_t si) {

    return -si;
}
static int8_t safe_add_func_int8_t_s_s(int8_t si1, int8_t si2) {

    return (si1 + si2);
}
static int8_t safe_sub_func_int8_t_s_s(int8_t si1, int8_t si2) {

    return (si1 - si2);
}
static int8_t safe_mul_func_int8_t_s_s(int8_t si1, int8_t si2) {

    return si1 * si2;
}
static int8_t safe_mod_func_int8_t_s_s(int8_t si1, int8_t si2) {

    return ((si2 == 0) || ((si1 == (-128)) && (si2 == (-1)))) ? ((si1)) : (si1 % si2);
}
static int8_t safe_div_func_int8_t_s_s(int8_t si1, int8_t si2) {

    return ((si2 == 0) || ((si1 == (-128)) && (si2 == (-1)))) ? ((si1)) : (si1 / si2);
}
static int8_t safe_lshift_func_int8_t_s_s(int8_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32) || (left > ((127) >> ((int)right)))) ?
        ((left)) :
        (left << ((int)right));
}
static int8_t safe_lshift_func_int8_t_s_u(int8_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32) || (left > ((127) >> ((uint32_t)right)))) ? ((left)) :
                                                                                                (left << ((uint32_t)right));
}
static int8_t safe_rshift_func_int8_t_s_s(int8_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static int8_t safe_rshift_func_int8_t_s_u(int8_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32)) ? ((left)) : (left >> ((uint32_t)right));
}
static int16_t safe_unary_minus_func_int16_t_s(int16_t si) {

    return -si;
}
static int16_t safe_add_func_int16_t_s_s(int16_t si1, int16_t si2) {

    return (si1 + si2);
}
static int16_t safe_sub_func_int16_t_s_s(int16_t si1, int16_t si2) {

    return (si1 - si2);
}
static int16_t safe_mul_func_int16_t_s_s(int16_t si1, int16_t si2) {

    return si1 * si2;
}
static int16_t safe_mod_func_int16_t_s_s(int16_t si1, int16_t si2) {

    return ((si2 == 0) || ((si1 == (-32767 - 1)) && (si2 == (-1)))) ? ((si1)) : (si1 % si2);
}
static int16_t safe_div_func_int16_t_s_s(int16_t si1, int16_t si2) {

    return ((si2 == 0) || ((si1 == (-32767 - 1)) && (si2 == (-1)))) ? ((si1)) : (si1 / si2);
}
static int16_t safe_lshift_func_int16_t_s_s(int16_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32) || (left > ((32767) >> ((int)right)))) ?
        ((left)) :
        (left << ((int)right));
}
static int16_t safe_lshift_func_int16_t_s_u(int16_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32) || (left > ((32767) >> ((uint32_t)right)))) ? ((left)) :
                                                                                                  (left << ((uint32_t)right));
}
static int16_t safe_rshift_func_int16_t_s_s(int16_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static int16_t safe_rshift_func_int16_t_s_u(int16_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32)) ? ((left)) : (left >> ((uint32_t)right));
}
static int32_t safe_unary_minus_func_int32_t_s(int32_t si) {

    return (si == (-2147483647 - 1)) ? ((si)) : -si;
}
static int32_t safe_add_func_int32_t_s_s(int32_t si1, int32_t si2) {

    return (((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) - si2))) ||
            ((si1 < 0) && (si2 < 0) && (si1 < ((-2147483647 - 1) - si2)))) ?
        ((si1)) :
        (si1 + si2);
}
static int32_t safe_sub_func_int32_t_s_s(int32_t si1, int32_t si2) {

    return (((si1 ^ si2) & (((si1 ^ ((si1 ^ si2) & (~(2147483647)))) - si2) ^ si2)) < 0) ? ((si1)) : (si1 - si2);
}
static int32_t safe_mul_func_int32_t_s_s(int32_t si1, int32_t si2) {

    return (((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) / si2))) ||
            ((si1 > 0) && (si2 <= 0) && (si2 < ((-2147483647 - 1) / si1))) ||
            ((si1 <= 0) && (si2 > 0) && (si1 < ((-2147483647 - 1) / si2))) ||
            ((si1 <= 0) && (si2 <= 0) && (si1 != 0) && (si2 < ((2147483647) / si1)))) ?
        ((si1)) :
        si1 * si2;
}
static int32_t safe_mod_func_int32_t_s_s(int32_t si1, int32_t si2) {

    return ((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1)))) ? ((si1)) : (si1 % si2);
}
static int32_t safe_div_func_int32_t_s_s(int32_t si1, int32_t si2) {

    return ((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1)))) ? ((si1)) : (si1 / si2);
}
static int32_t safe_lshift_func_int32_t_s_s(int32_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32) || (left > ((2147483647) >> ((int)right)))) ?
        ((left)) :
        (left << ((int)right));
}
static int32_t safe_lshift_func_int32_t_s_u(int32_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32) || (left > ((2147483647) >> ((uint32_t)right)))) ?
        ((left)) :
        (left << ((uint32_t)right));
}
static int32_t safe_rshift_func_int32_t_s_s(int32_t left, int right) {

    return ((left < 0) || (((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static int32_t safe_rshift_func_int32_t_s_u(int32_t left, uint32_t right) {

    return ((left < 0) || (((uint32_t)right) >= 32)) ? ((left)) : (left >> ((uint32_t)right));
}
static uint8_t safe_unary_minus_func_uint8_t_u(uint8_t ui) {

    return -ui;
}
static uint8_t safe_add_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

    return ui1 + ui2;
}
static uint8_t safe_sub_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

    return ui1 - ui2;
}
static uint8_t safe_mul_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

    return ((uint32_t)ui1) * ((uint32_t)ui2);
}
static uint8_t safe_mod_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 % ui2);
}
static uint8_t safe_div_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 / ui2);
}
static uint8_t safe_lshift_func_uint8_t_u_s(uint8_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32) || (left > ((255) >> ((int)right)))) ? ((left)) : (left << ((int)right));
}
static uint8_t safe_lshift_func_uint8_t_u_u(uint8_t left, uint32_t right) {

    return ((((uint32_t)right) >= 32) || (left > ((255) >> ((uint32_t)right)))) ? ((left)) : (left << ((uint32_t)right));
}
static uint8_t safe_rshift_func_uint8_t_u_s(uint8_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static uint8_t safe_rshift_func_uint8_t_u_u(uint8_t left, uint32_t right) {

    return (((uint32_t)right) >= 32) ? ((left)) : (left >> ((uint32_t)right));
}
static uint16_t safe_unary_minus_func_uint16_t_u(uint16_t ui) {

    return -ui;
}
static uint16_t safe_add_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

    return ui1 + ui2;
}
static uint16_t safe_sub_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

    return ui1 - ui2;
}
static uint16_t safe_mul_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

    return ((uint32_t)ui1) * ((uint32_t)ui2);
}
static uint16_t safe_mod_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 % ui2);
}
static uint16_t safe_div_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 / ui2);
}
static uint16_t safe_lshift_func_uint16_t_u_s(uint16_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32) || (left > ((65535) >> ((int)right)))) ? ((left)) : (left << ((int)right));
}
static uint16_t safe_lshift_func_uint16_t_u_u(uint16_t left, uint32_t right) {

    return ((((uint32_t)right) >= 32) || (left > ((65535) >> ((uint32_t)right)))) ? ((left)) : (left << ((uint32_t)right));
}
static uint16_t safe_rshift_func_uint16_t_u_s(uint16_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static uint16_t safe_rshift_func_uint16_t_u_u(uint16_t left, uint32_t right) {

    return (((uint32_t)right) >= 32) ? ((left)) : (left >> ((uint32_t)right));
}
static uint32_t safe_unary_minus_func_uint32_t_u(uint32_t ui) {

    return -ui;
}
static uint32_t safe_add_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

    return ui1 + ui2;
}
static uint32_t safe_sub_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

    return ui1 - ui2;
}
static uint32_t safe_mul_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

    return ((uint32_t)ui1) * ((uint32_t)ui2);
}
static uint32_t safe_mod_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 % ui2);
}
static uint32_t safe_div_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

    return (ui2 == 0) ? ((ui1)) : (ui1 / ui2);
}
static uint32_t safe_lshift_func_uint32_t_u_s(uint32_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32) || (left > ((4294967295U) >> ((int)right)))) ? ((left)) :
                                                                                                      (left << ((int)right));
}
static uint32_t safe_lshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {

    return ((((uint32_t)right) >= 32) || (left > ((4294967295U) >> ((uint32_t)right)))) ? ((left)) : (left << ((uint32_t)right));
}
static uint32_t safe_rshift_func_uint32_t_u_s(uint32_t left, int right) {

    return ((((int)right) < 0) || (((int)right) >= 32)) ? ((left)) : (left >> ((int)right));
}
static uint32_t safe_rshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {

    return (((uint32_t)right) >= 32) ? ((left)) : (left >> ((uint32_t)right));
}
static float safe_add_func_float_f_f(float sf1, float sf2) {

    return (fabsf((0.5f * sf1) + (0.5f * sf2)) > (0.5f * 3.40282346638528859811704183484516925e+38F)) ? (sf1) : (sf1 + sf2);
}
static float safe_sub_func_float_f_f(float sf1, float sf2) {

    return (fabsf((0.5f * sf1) - (0.5f * sf2)) > (0.5f * 3.40282346638528859811704183484516925e+38F)) ? (sf1) : (sf1 - sf2);
}
static float safe_mul_func_float_f_f(float sf1, float sf2) {

    return (fabsf((0x1.0p-100f * sf1) * (0x1.0p-28f * sf2)) >
            (0x1.0p-100f * (0x1.0p-28f * 3.40282346638528859811704183484516925e+38F))) ?
        (sf1) :
        (sf1 * sf2);
}
static float safe_div_func_float_f_f(float sf1, float sf2) {

    return ((fabsf(sf2) < 1.0f) &&
            (((sf2 == 0.0f) ||
              (fabsf((0x1.0p-49f * sf1) / (0x1.0p100f * sf2))) >
                  (0x1.0p-100f * (0x1.0p-49f * 3.40282346638528859811704183484516925e+38F))))) ?
        (sf1) :
        (sf1 / sf2);
}
static int32_t safe_convert_func_float_to_int32_t(float sf1) {

    return ((sf1 <= (-2147483647 - 1)) || (sf1 >= (2147483647))) ? ((2147483647)) : ((int32_t)(sf1));
}
