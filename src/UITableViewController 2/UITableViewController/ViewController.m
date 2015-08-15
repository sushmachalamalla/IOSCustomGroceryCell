//
//  ViewController.m
//  UITableViewController
//
//  Created by Sandeep Ankam on 8/3/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomTableViewCell.h"
#import "Grocery.h"

static NSString * const cellIdentifier = @"MyCustomCell";

@implementation ViewController

@synthesize array;



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UINib *myCell = [UINib nibWithNibName:@"MyCustomTableViewCell" bundle:nil];
    
   

    [self.tableView registerNib:myCell forCellReuseIdentifier:cellIdentifier];
    
    
    //NSMutableArray *array1 = [[NSMutableArray alloc]init];
    self.array = [[NSMutableArray alloc]init];
    
    //initialize data
    Grocery *grocery = [[Grocery alloc]initWithSpiceCategory:@"Spice"
                                                   spiceName:@"spice1"
                                            spiceDescription:@"description1"
                                                  spiceImage:nil];
    
    [self.array addObject:grocery];
    grocery = [[Grocery alloc]initWithSpiceCategory:@"Diary"
                                          spiceName:@"Diary1"
                                   spiceDescription:@"Description1"
                                         spiceImage:nil];
    
    [self.array addObject:grocery];
    
    //retrieve data
    Grocery *gotGrocery = [array objectAtIndex:0];
    NSLog(@"%@",gotGrocery.spiceName);
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCustomTableViewCell *cell = nil;
    
        
        cell = (MyCustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        Grocery *gotGrocery = [array objectAtIndex:indexPath.row];

        cell.displayLabel.text = gotGrocery.spiceCategory;
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    

        [self performSegueWithIdentifier:@"firstSegue" sender:self];
   
    

}




@end
