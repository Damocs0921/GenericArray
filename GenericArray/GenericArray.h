//
//  GenericArray.h
//  GenericArray
//
//  Created by DamocsYang on 6/11/15.
//  Copyright (c) 2015 DamocsYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GenericArray : NSObject
{
    NSMutableArray *_array;
    Class _elementClass;
}

- (id)initWithClass:(Class)cls;

- (void)addElement:(id)anObject;

- (void)removeElement:(id)anObject;

- (id)elementAtIndex:(NSUInteger)index;

- (NSString *)description;

- (void)addElementsFromArray:(GenericArray*)array;

@end
