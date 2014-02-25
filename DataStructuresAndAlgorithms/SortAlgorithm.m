//
//  SortAlgorithm.m
//  DataStructuresAndAlgorithms
//
//  Created by DENG KE on 14-2-23.
//  Copyright (c) 2014年 DENG KE. All rights reserved.
//

#import "SortAlgorithm.h"

@implementation SortAlgorithm

+(void)swap:(NSMutableArray *)array index1:(NSInteger)index1 index2:(NSInteger)index2
{
    NSNumber* temp = [array objectAtIndex:index1];
    [array replaceObjectAtIndex:index1 withObject:[array objectAtIndex:index2]];
    [array replaceObjectAtIndex:index2 withObject:temp];
}

// 冒泡排序
+(NSMutableArray*) bubbleSort:(NSMutableArray*) array
{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    NSUInteger arrayCount = array.count;
    for (NSUInteger i = 0; i < arrayCount; i++)
    {
        bool exchanged = false;
        for (NSUInteger j = 0 ; j < arrayCount - 1; j++)
        {
            NSUInteger index1 = j;
            NSUInteger index2 = j + 1;
            NSInteger value1 = [sortedArray[index1] integerValue];
            NSInteger value2 = [sortedArray[index2] integerValue];
            if (value2 < value1)
            {
                [SortAlgorithm swap:sortedArray index1:index1 index2:index2];
                exchanged = true;
            }
        }
        
        if (!exchanged)
        {
            break;
        }
    }
    
    return sortedArray;
}

// 选择排序
+(NSMutableArray*) selectSort:(NSMutableArray*) array
{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    NSUInteger arrayCount = sortedArray.count;
    
    for (int i = 0; i < arrayCount; i++)
    {
        int select = i;
        
        for (int j = i + 1; j < arrayCount; j++)
        {
            NSUInteger index1 = select;
            NSUInteger index2 = j;
            NSInteger value1 = [sortedArray[index1] integerValue];
            NSInteger value2 = [sortedArray[index2] integerValue];
            if (value2 < value1)
            {
                select = j;
            }
        }
        
        if (select != i)
        {
            [SortAlgorithm swap:sortedArray index1:select index2:i];
        }
    }
    
    return sortedArray;
}

@end
