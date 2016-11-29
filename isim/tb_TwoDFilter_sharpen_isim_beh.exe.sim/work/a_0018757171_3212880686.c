/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Mins/Documents/Xilinx/RealTimeFiltering/sharpen_filter.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_1242562249_sub_2479290730_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0018757171_3212880686_p_0(char *t0)
{
    char t16[16];
    char t21[16];
    char t27[16];
    char t44[16];
    char t50[16];
    char t54[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;

LAB0:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 9480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 2752U);
    t6 = xsi_signal_has_event(t1);
    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(155, ng0);
    t7 = (t0 + 3112U);
    t11 = *((char **)t7);
    t7 = (t0 + 9576);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 12U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t17 = (11 - 11);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 3432U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15852U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 3272U);
    t14 = *((char **)t13);
    t22 = (11 - 11);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 3272U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 15836U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9640);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 13U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t17 = (11 - 11);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 3752U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15884U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 3592U);
    t14 = *((char **)t13);
    t22 = (11 - 11);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 3592U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 15868U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9704);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 13U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t17 = (11 - 11);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 4072U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15916U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 3912U);
    t14 = *((char **)t13);
    t22 = (11 - 11);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 3912U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 15900U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9768);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 13U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(159, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t17 = (11 - 11);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 4392U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15948U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 4232U);
    t14 = *((char **)t13);
    t22 = (11 - 11);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 4232U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 15932U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9832);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 13U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(161, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t17 = (12 - 12);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 4552U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15964U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 4712U);
    t14 = *((char **)t13);
    t22 = (12 - 12);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 4712U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 15980U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9896);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 14U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(162, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t17 = (12 - 12);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 4872U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 15996U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 5032U);
    t14 = *((char **)t13);
    t22 = (12 - 12);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 5032U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 16012U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 9960);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 14U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 5192U);
    t2 = *((char **)t1);
    t1 = (t0 + 10024);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    t17 = (13 - 13);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 5672U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 16076U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 5832U);
    t14 = *((char **)t13);
    t22 = (13 - 13);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 5832U);
    t26 = *((char **)t15);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t0 + 16092U);
    t15 = xsi_base_array_concat(t15, t27, t28, (char)99, t4, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t15, t27);
    t31 = (t0 + 10088);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t30, 15U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(166, ng0);
    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t1 = (t0 + 10152);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 12U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(168, ng0);
    t1 = (t0 + 5992U);
    t2 = *((char **)t1);
    t17 = (14 - 14);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t7 = (t0 + 5992U);
    t8 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 16108U);
    t7 = xsi_base_array_concat(t7, t21, t11, (char)99, t3, (char)97, t8, t12, (char)101);
    t13 = (t0 + 5512U);
    t14 = *((char **)t13);
    t22 = (11 - 11);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t13 = (t14 + t25);
    t4 = *((unsigned char *)t13);
    t15 = (t0 + 5512U);
    t26 = *((char **)t15);
    t36 = (11 - 11);
    t37 = (t36 * -1);
    t38 = (1U * t37);
    t39 = (0 + t38);
    t15 = (t26 + t39);
    t5 = *((unsigned char *)t15);
    t29 = ((IEEE_P_2592010699) + 4024);
    t28 = xsi_base_array_concat(t28, t27, t29, (char)99, t4, (char)99, t5, (char)101);
    t30 = (t0 + 5512U);
    t31 = *((char **)t30);
    t40 = (11 - 11);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t30 = (t31 + t43);
    t6 = *((unsigned char *)t30);
    t33 = ((IEEE_P_2592010699) + 4024);
    t32 = xsi_base_array_concat(t32, t44, t33, (char)97, t28, t27, (char)99, t6, (char)101);
    t34 = (t0 + 5512U);
    t35 = *((char **)t34);
    t45 = (11 - 11);
    t46 = (t45 * -1);
    t47 = (1U * t46);
    t48 = (0 + t47);
    t34 = (t35 + t48);
    t9 = *((unsigned char *)t34);
    t51 = ((IEEE_P_2592010699) + 4024);
    t49 = xsi_base_array_concat(t49, t50, t51, (char)97, t32, t44, (char)99, t9, (char)101);
    t52 = (t0 + 5512U);
    t53 = *((char **)t52);
    t55 = ((IEEE_P_2592010699) + 4024);
    t56 = (t0 + 16060U);
    t52 = xsi_base_array_concat(t52, t54, t55, (char)97, t49, t50, (char)97, t53, t56, (char)101);
    t57 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t16, t7, t21, t52, t54);
    t58 = (t0 + 10216);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    memcpy(t62, t57, 16U);
    xsi_driver_first_trans_fast(t58);
    xsi_set_current_line(170, ng0);
    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t17 = (15 - 15);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t1 = (t0 + 16124U);
    t3 = ieee_p_1242562249_sub_2479290730_1035706684(IEEE_P_1242562249, t2, t1, 255);
    if (t3 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(175, ng0);
    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t18 = (15 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t7 = (t0 + 10280);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB12:    xsi_set_current_line(179, ng0);
    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t3 = (t17 == 5);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB6;

LAB8:    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t5 = t10;
    goto LAB10;

LAB11:    xsi_set_current_line(171, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t8 = t7;
    memset(t8, (unsigned char)2, 8U);
    t11 = (t0 + 10280);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB14:    xsi_set_current_line(173, ng0);
    t7 = xsi_get_transient_memory(8U);
    memset(t7, 0, 8U);
    t8 = t7;
    memset(t8, (unsigned char)3, 8U);
    t11 = (t0 + 10280);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB12;

LAB16:    xsi_set_current_line(180, ng0);
    t1 = (t0 + 10344);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

}

static void work_a_0018757171_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    int t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(189, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 9496);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(191, ng0);
    t1 = (t0 + 2752U);
    t6 = xsi_signal_has_event(t1);
    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(193, ng0);
    t7 = (t0 + 6312U);
    t11 = *((char **)t7);
    t12 = *((int *)t11);
    t13 = (t12 + 1);
    t7 = (t0 + 10408);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((int *)t17) = t13;
    xsi_driver_first_trans_fast(t7);
    goto LAB6;

LAB8:    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t5 = t10;
    goto LAB10;

}


extern void work_a_0018757171_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0018757171_3212880686_p_0,(void *)work_a_0018757171_3212880686_p_1};
	xsi_register_didat("work_a_0018757171_3212880686", "isim/tb_TwoDFilter_sharpen_isim_beh.exe.sim/work/a_0018757171_3212880686.didat");
	xsi_register_executes(pe);
}
