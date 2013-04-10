//
//  ViewController.m
//  HelloWorldStoryboard
//
//  Created by Atticus White on 4/10/13.
//  Copyright (c) 2013 Atticus White. All rights reserved.
//

#import "ViewController.h"
#import "RecipeDetailedViewController.h"
#import "Recipe.h"

//http://www.appcoda.com/storyboards-ios-tutorial-pass-data-between-view-controller-with-segue/
//http://www.appcoda.com/hello-world-build-your-first-iphone-app/


@interface ViewController ()

@end

@implementation ViewController{
    NSArray *recipes;
}
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Eggs Benedict";
    recipe1.prepTime = @"12 mins";
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"10 mins";
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Pizza";
    recipe3.prepTime = @"5 mins";

    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, nil];
    
    //recipes = [NSArray arrayWithObjects:@"Eggs Benedict", @"Mushroom Risotto", @"Pizza", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:simpleTableIdentifier];
    }
    Recipe *r = [recipes objectAtIndex:indexPath.row];
    
    cell.textLabel.text = r.name;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showRecipeDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        RecipeDetailedViewController *destViewController = segue.destinationViewController;
        destViewController.recipe = [recipes objectAtIndex:indexPath.row];
    }
}


@end
