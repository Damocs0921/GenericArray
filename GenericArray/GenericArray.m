//
//  GenericArray.m
//  GenericArray
//
//  Created by DamocsYang on 6/11/15.
//  Copyright (c) 2015 DamocsYang. All rights reserved.
//

#import "GenericArray.h"

@implementation GenericArray

-(id)init
{
    NSAssert(false, @"Please use initWithClass: instead");
    return nil;
}

- (id)initWithClass:(Class)cls
{
    if (self = [super init])
    {
        _elementClass = cls;
        _array = [[NSMutableArray alloc]init];
    }
    
    return self;
}

- (void)addElement:(id)anObject
{
    NSAssert([anObject isKindOfClass:_elementClass],@"Class Wrong!");
    
    [_array addObject:anObject];
}
- (void)removeElement:(id)anObject
{
    [_array removeObject:anObject];
}
- (id)elementAtIndex:(NSUInteger)index
{
    return [_array objectAtIndex:index];
}

- (NSString *)description
{
    return [_array description];
}

- (void)addElementsFromArray:(NSArray*)array
{
    for (NSObject* obj in array)
    {
        NSAssert([obj isKindOfClass:_elementClass],@"Class Wrong!");
        [_array addObject:obj];
    }
}

@end
