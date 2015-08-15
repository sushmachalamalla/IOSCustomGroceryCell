//
//  Grocery.h
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grocery : NSObject
@property (nonatomic, strong) NSString *spiceCategory;
@property (nonatomic, strong) NSString *spiceName;
@property (nonatomic, strong) NSString *spiceDescription;
@property (nonatomic, strong) NSData *spiceImage;

-(id)initWithSpiceCategory:(NSString *)spiceCategory_
             spiceName:(NSString *)spiceName_
        spiceDescription:(NSString *)spiceDescription_
       spiceImage:(NSData *)spiceImage_;

@end
