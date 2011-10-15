//
//  TBBackButtonSampleViewController.m
//  TBBackButtonSample
//
//  Created by Tushar on 10/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TBBackButtonSampleViewController.h"

@implementation TBBackButtonSampleViewController
@synthesize navBar;

- (void)dealloc
{
    [navBar release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{   
    [super viewDidLoad];
    
    //UIButton with back image
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    back.frame = CGRectMake(0, 0, 55, 30);
    [back setBackgroundImage:[[UIImage  imageNamed:@"back_button.png"] stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [back setTitleEdgeInsets:UIEdgeInsetsMake(0, 7, 2, 0)]; // give little space before the text
    [[back titleLabel] setFont:[UIFont systemFontOfSize:15.0]];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    //BarButtonItem with custom view/button
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navBar.topItem.leftBarButtonItem = backItem;
    [backItem release];
     
}


- (void)back{
    
    NSLog(@"Back Clicked !");
}

- (void)viewDidUnload
{
    [self setNavBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
