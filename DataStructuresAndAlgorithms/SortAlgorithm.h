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

/* 冒泡排序
   在要排序的一组数中，对当前还未排好序的范围内的全部数，自上而下对相邻的两个数依次进行比较和调整，让较大的数往下沉，较小的往上冒。
*/
+(NSMutableArray*) bubbleSort:(NSMutableArray*) array;

@end
