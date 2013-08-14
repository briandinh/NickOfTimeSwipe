//
//  ViewController.m
//  NickOfTimeSwipe
//
//  Created by Brian Dinh on 8/13/13.
//  Copyright (c) 2013 Brian Dinh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *commands;
    int index;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addSwipeGestures];
    commands = [NSArray arrayWithObjects:@"Swipe left",@"Swipe right",@"Swipe up",@"Swipe down", nil];
    index = arc4random() % 4;

}
- (void)didReceiveMemoryWarning
{
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addSwipeGestures{
    UISwipeGestureRecognizer* swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpFrom:)];
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    UISwipeGestureRecognizer* swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownFrom:)];
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    UISwipeGestureRecognizer* swipeLeftGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeLeftFrom:)];
    swipeLeftGestureRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    
    UISwipeGestureRecognizer* swipeRightGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeRightFrom:)];
    swipeRightGestureRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    
    [self.view addGestureRecognizer:swipeUpGestureRecognizer];
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
    [self.view addGestureRecognizer:swipeLeftGestureRecognizer];
    [self.view addGestureRecognizer:swipeRightGestureRecognizer];
}

- (void)handleSwipeUpFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped up");
}

- (void)handleSwipeDownFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped down");
}

- (void)handleSwipeLeftFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped left");
}

- (void)handleSwipeRightFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped right");
}



@end
