//
//  TableViewController.m
//  CellHeightTest
//
//  Created by Ben Packard on 10/13/14.
//  Copyright (c) 2014 Ben Packard. All rights reserved.
//

#import "TableViewController.h"

#import "Cell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (!self) return nil;
	
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[self.tableView registerClass:[Cell class] forCellReuseIdentifier:@"Cell"];
	self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - table view

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	UIViewController *vc = [[UIViewController alloc] initWithNibName:nil bundle:nil];
	vc.view.backgroundColor = [UIColor yellowColor];
	[self.navigationController pushViewController:vc animated:YES];
}

@end
