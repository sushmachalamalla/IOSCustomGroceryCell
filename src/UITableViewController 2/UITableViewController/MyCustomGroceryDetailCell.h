//
//  MyCustomGroceryDetailCell.h
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomGroceryDetailCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *spiceNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *spiceDescriptionLabel;

@property (strong, nonatomic) IBOutlet UIImageView *spiceImageView;



@end
