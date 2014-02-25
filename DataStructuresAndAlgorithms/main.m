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
        NSArray* source = @[@"22", @"6", @"19", @"87", @"45", @"13", @"56", @"99", @"70", @"1"];
        NSMutableArray* array = [[NSMutableArray alloc] initWithArray:source];
        NSArray* sortedArray = nil;

        sortedArray = [SortAlgorithm bubbleSort:array];

        printMutableArray(sortedArray);
    }
    return 0;
}
