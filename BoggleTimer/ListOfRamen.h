//
//  ListOfRamen.h
//  BoggleTimer
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListOfRamen : NSObject
@property (strong,nonatomic) NSString *name;
@property (strong, nonatomic)NSString *time;
@property (strong, nonatomic)NSString *imageName;
+(id)ramen:(NSString *)name time:(NSString *)time image:(NSString *)image;
@end
