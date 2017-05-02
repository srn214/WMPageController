//
//  WMTableViewController.m
//  Demo
//
//  Created by Mark on 16/7/25.
//  Copyright © 2016年 Wecan Studio. All rights reserved.
//

#import "WMTableViewController.h"
#import "WMHomeViewController.h"

@interface WMTableViewController ()

/** oldOffsetY */
@property (nonatomic, assign) CGFloat oldOffsetY;

@end

static NSString *const kTablewCellIdentifier = @"kTablewCellIdentifier";
@implementation WMTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kTablewCellIdentifier];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTablewCellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"歌曲";
    return cell;
}


#pragma mark - Scroll view delegate


@end
