//
//  RecipeDetailedViewController.m
//  HelloWorldStoryboard
//
//  Created by Atticus White on 4/10/13.
//  Copyright (c) 2013 Atticus White. All rights reserved.
//

#import "RecipeDetailedViewController.h"

@interface RecipeDetailedViewController ()

@end

@implementation RecipeDetailedViewController

@synthesize recipeLabel;
@synthesize recipePrepTime;
@synthesize recipe;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    recipeLabel.text = recipe.name;
    recipePrepTime.text = recipe.prepTime;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
