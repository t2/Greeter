//
//  IGViewController.m
//  Greeter
//
//  Created by Trent Kocurek on 9/22/13.
//  Copyright (c) 2013 Igniting. All rights reserved.
//

#import "IGViewController.h"

@interface IGViewController ()
@property (nonatomic) NSArray *greetings;
@property (nonatomic, weak) IBOutlet UILabel *greetingLabel;

- (IBAction)greetMe;
@end

@implementation IGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.greetings = @[@"hello from the US", @"bonjour from France", @"¡hola from Mexico", @"hallo from Germany"];
    [self greetMe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)greetMe {
    uint32_t randomIndex = arc4random_uniform([self.greetings count]);
    NSString *randomGreeting = [self.greetings objectAtIndex:randomIndex];
    self.greetingLabel.text = randomGreeting;
}

@end
