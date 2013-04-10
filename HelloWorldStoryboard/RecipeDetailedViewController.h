//
//  RecipeDetailedViewController.h
//  HelloWorldStoryboard
//
//  Created by Atticus White on 4/10/13.
//  Copyright (c) 2013 Atticus White. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface RecipeDetailedViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property(nonatomic, strong) IBOutlet UILabel *recipePrepTime;
@property(nonatomic, strong) Recipe *recipe;

@end
