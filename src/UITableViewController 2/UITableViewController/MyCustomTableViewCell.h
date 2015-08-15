//
//  MyCustomTableViewCell.h
//  UITableViewController
//
//  Created by Sandeep Ankam on 8/4/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;

- (IBAction)switch:(id)sender;

@end
