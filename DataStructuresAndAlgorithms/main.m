//
//  main.m
//  DataStructuresAndAlgorithms
//
//  Created by DENG KE on 14-2-23.
//  Copyright (c) 2014年 DENG KE. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SortAlgorithm.h"

void printMutableArray(NSArray* array)
{
    for (int i = 0; i < array.count; i++)
    {
        NSLog(@"%@", array[i]);
    }
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSArray* source = @[
                            [NSNumber numberWithInt:22],
                            [NSNumber numberWithInt:6],
                            [NSNumber numberWithInt:19],
                            [NSNumber numberWithInt:87],
                            [NSNumber numberWithInt:45],
                            [NSNumber numberWithInt:13],
                            [NSNumber numberWithInt:56],
                            [NSNumber numberWithInt:99],
                            [NSNumber numberWithInt:70],
                            [NSNumber numberWithInt:64]
                           ];
        NSMutableArray* array = [[NSMutableArray alloc] initWithArray:source];
        NSArray* sortedArray = nil;

//        sortedArray = [SortAlgorithm bubbleSort:array];

//        sortedArray = [SortAlgorithm selectSort:array];
        
//        sortedArray = [SortAlgorithm insertSort:array];
        
        sortedArray = [SortAlgorithm quickSort:array];

        printMutableArray(sortedArray);
    }
    return 0;
}
