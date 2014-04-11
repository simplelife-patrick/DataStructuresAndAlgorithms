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

// 插入排序
+(NSMutableArray*) insertSort:(NSMutableArray*) array
{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    NSUInteger arrayCount = sortedArray.count;
    
    NSInteger temp = 0;
    
    for (int i = 1; i < arrayCount; i++)
    {
        NSInteger j = i - 1;
        temp = [sortedArray[i] integerValue];

        while (j >= 0 && temp < [sortedArray[j] integerValue])
        {
            [SortAlgorithm swap:sortedArray index1:j + 1 index2:j];
            
            j--;
        }
    }
    
    return sortedArray;
}

// 快速排序
+(NSMutableArray*) quickSort:(NSMutableArray*) array
{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    NSUInteger arrayCount = sortedArray.count;
    
    [SortAlgorithm _quickSort:sortedArray beginIndex:0 endIndex:arrayCount - 1];
    
    return sortedArray;
}

// 快速排序的递归调用函数
+(void) _quickSort:(NSMutableArray*) array beginIndex:(NSUInteger) beginIndex endIndex:(NSUInteger) endIndex
{
    NSUInteger i = beginIndex;
    NSUInteger j = endIndex;
    if (i >= j)
    {
        return;
    }
    
    NSInteger mainElement = [array[i] integerValue];

    while (i < j)
    {
        while (i < j && [array[j] integerValue] >= mainElement)
        {
            j--;
        }
        if (i < j)
        {
            [SortAlgorithm swap:array index1:i index2:j];
            i++;
        }
        
        while (i < j && [array[i] integerValue] < mainElement)
        {
            i++;
        }
        if (i < j)
        {
            [SortAlgorithm swap:array index1:i index2:j];
            j--;
        }
    }
    

    [SortAlgorithm _quickSort:array beginIndex:beginIndex endIndex:i - 1];
    [SortAlgorithm _quickSort:array beginIndex:i + 1 endIndex:endIndex];
}

// 希尔排序
/*
 - (NSArray *)shellSortWithArray:(NSArray *)aData;
 {
 NSMutableArray *data = [[[NSMutableArray alloc] initWithArray:aData] autorelease];
 int length = [data count];
 for (int h = length / 2; h > 0; h = h / 2) {
 // here is insert sort
 for (int i = h; i < length; i++) {
 NSNumber *temp = [data objectAtIndex:i];
 if ([temp integerValue] < [[data objectAtIndex:i - h] integerValue]) {
 for (int j = 0; j < i; j += h) {
 if ([temp integerValue] < [[data objectAtIndex:j] integerValue]) {
 [self swapWithData:data index1:i index2:j];
 }
 }
 }
 }
 
 }
 return data;
 }
 */
+(NSMutableArray*) shellSort:(NSMutableArray *)array
{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    NSUInteger arrayCount = sortedArray.count;
    
    
    
    return sortedArray;
}

@end
