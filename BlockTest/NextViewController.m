//
//  NextViewController.m
//  BlockTest
//
//  Created by Hristo Hristov on 4/27/12.
//  Copyright (c) 2012 DailyBurn. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@property (strong, nonatomic) UILabel* myLabel;

@end

@implementation NextViewController

@synthesize myLabel = _myLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////

- (void)loadView {
  CGRect frame = [[UIScreen mainScreen] applicationFrame];
  UIView* mainView = [[UIView alloc] initWithFrame:frame];
  [mainView setBackgroundColor:[UIColor greenColor]];
  
  UILabel* myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(frame), 40.0f)];
  [myLabel setText:@"Some Text"];
  [myLabel setBackgroundColor:[UIColor clearColor]];
  [myLabel setTextAlignment:UITextAlignmentCenter];
  [myLabel setCenter:CGPointMake(CGRectGetWidth(frame)/2.0f, CGRectGetHeight(frame)/2.0f)];
  self.myLabel = myLabel;
  
  
  [mainView addSubview:myLabel];
  
  self.view = mainView;
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  [UIView animateWithDuration:10.0f delay:5.0f options:UIViewAnimationCurveEaseIn animations:^{
    
    NSLog(@"animating view");

    CGPoint newCenter = self.myLabel.center;
    newCenter.y -= 100.0f;
   
    self.myLabel.center = newCenter;

  } completion:NULL];
  
//  double delayInSeconds = 10.0;
//  dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
//  dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//    NSLog(@"Printing label %@",self.myLabel);
//  });
}

////////////////////////////////////////////////////////////////////////////////

- (void)dealloc {
  NSLog(@"NextViewController -- dealloc");
}

////////////////////////////////////////////////////////////////////////////////

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
