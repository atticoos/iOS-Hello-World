//
//  ViewController.h
//  HelloWorldStoryboard
//
//  Created by Atticus White on 4/10/13.
//  Copyright (c) 2013 Atticus White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) IBOutlet UITableView *tableView;
@end
