//
//  ViewController.m
//  GenericArray
//
//  Created by DamocsYang on 6/11/15.
//  Copyright (c) 2015 DamocsYang. All rights reserved.
//

#import "ViewController.h"
#import "GenericArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   // GenericArray* _array = [[GenericArray alloc]init];
    GenericArray* _array = [[GenericArray alloc]initWithClass:[NSString class]];
    
    //[_array addElement:[NSNumber numberWithFloat:1.0]];
    [_array addElement:@"1.0"];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
