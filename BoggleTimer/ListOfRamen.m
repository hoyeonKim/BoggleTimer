//
//  ListOfRamen.m
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ListOfRamen.h"

@implementation ListOfRamen
+(id)ramen:(NSString *)name time:(NSString *)time image:(NSString *)image{
    ListOfRamen *item = [[ListOfRamen alloc]init];
    item.name = name;
    item.time = time;
    item.imageName = image;
    return item;
}
@end
