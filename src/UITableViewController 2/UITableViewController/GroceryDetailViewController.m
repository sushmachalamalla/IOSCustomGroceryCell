//
//  GroceryDetailViewController.m
//  UITableViewController
//
//  Created by Sushma Reddy on 8/15/15.
//  Copyright (c) 2015 Sandeep Ankam. All rights reserved.
//

#import "GroceryDetailViewController.h"
#import "MyCustomGroceryDetailCell.h"

static NSString * const groceryDetailCellIdentifier = @"MyCustomGroceryCelliD";

@interface GroceryDetailViewController ()

@end

@implementation GroceryDetailViewController
@synthesize groceryDetailTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UINib *myGroceryCell = [UINib nibWithNibName:@"MyCustomGroceryDetailCell" bundle:nil];
    
    
    
    [self.groceryDetailTableView registerNib:myGroceryCell forCellReuseIdentifier:groceryDetailCellIdentifier];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyCustomGroceryDetailCell *groceryDetailCell = nil;
    
    groceryDetailCell = (MyCustomGroceryDetailCell *)[groceryDetailTableView dequeueReusableCellWithIdentifier:groceryDetailCellIdentifier];
    
    
    //Grocery *gotGrocery = [array objectAtIndex:indexPath.row];
    groceryDetailCell.spiceNameLabel.text=@"chilli";
    return groceryDetailCell;
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
