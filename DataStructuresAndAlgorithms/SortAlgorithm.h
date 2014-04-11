//
//  SortAlgorithm.h
//  DataStructuresAndAlgorithms
//
//  Created by DENG KE on 14-2-23.
//  Copyright (c) 2014年 DENG KE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SortAlgorithm : NSObject

+(void)swap:(NSMutableArray *)array index1:(NSInteger)index1 index2:(NSInteger)index2;

/* 
 冒泡排序
    在要排序的一组数中，对当前还未排好序的范围内的全部数，自上而下对相邻的两个数依次进行比较和调整，让较大的数往下沉，较小的往上冒。
 */
+(NSMutableArray*) bubbleSort:(NSMutableArray*) array;

/*
 选择排序
    在要排序的一组数中，选出最小的一个数与第一个位置的数交换；然后在剩下的数当中再找最小的与第二个位置的数交换，如此循环到倒数第二个数和最后一个数比较为止。
 */
+(NSMutableArray*) selectSort:(NSMutableArray*) array;

/*
 插入排序
    在要排序的一组数中，假设前面(n-1)[n>=2] 个数已经是排好顺序的，现在要把第n个数插到前面的有序数中，使得这n个数也是排好顺序的。如此反复循环，直到全部排好顺序。（类似抓扑克牌时的排序整理动作）
 */
+(NSMutableArray*) insertSort:(NSMutableArray*) array;

/*
 快速排序
    挖坑->填数->分区：
    1．先从数列中取出一个数作为基准数（例如左起第一个）
    2．分区过程，将比这个基准数大的数全放到它的右边，小于或等于它的数全放到它的左边
    3．再对左右区间重复第二步，直到各区间只有一个数
 */
+(NSMutableArray*) quickSort:(NSMutableArray*) array;

/*
 希尔排序
 */
+(NSMutableArray*) shellSort:(NSMutableArray*) array;

@end
