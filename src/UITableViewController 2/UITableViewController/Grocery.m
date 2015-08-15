//
//  Grocery.m
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "Grocery.h"

@implementation Grocery

@synthesize spiceCategory;
@synthesize spiceName;
@synthesize spiceDescription;
@synthesize spiceImage;
-(id)initWithSpiceCategory:(NSString *)spiceCategory_
                 spiceName:(NSString *)spiceName_
          spiceDescription:(NSString *)spiceDescription_
                spiceImage:(NSData *)spiceImage_{

    self = [super init];
    if (self) {
        self.spiceCategory = spiceCategory_;
        self.spiceName = spiceName_;
        self.spiceDescription = spiceDescription_;
        self.spiceImage = spiceImage_;
    }
    return self;
}

@end
