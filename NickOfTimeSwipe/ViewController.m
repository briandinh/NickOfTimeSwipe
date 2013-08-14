//
//  ViewController.m
//  NickOfTimeSwipe
//
//  Created by Brian Dinh on 8/13/13.
//  Copyright (c) 2013 Brian Dinh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *allCommands;
    int index;
    NSString *indexString;
    NSMutableArray *checkArray;
    NSMutableArray *commandArray;
    __weak IBOutlet UILabel *commandLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addSwipeGestures];
    checkArray = [NSMutableArray arrayWithCapacity:2];
    commandArray = [NSMutableArray arrayWithCapacity:2];
    allCommands = [NSArray arrayWithObjects:@"Swipe left",@"Swipe right",@"Swipe up",@"Swipe down",@"Swipe left then right", @"Swipe left then up",@"Swipe left then left",@"Swipe left then down",nil];
    [self pickAndDisplayCommand];
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
    if ([allCommands[index] isEqual: @"Swipe up"]) {
        NSLog(@"you win!");
        [self pickAndDisplayCommand];

    }
    else{
        NSLog(@"you lose!");
    }
}

- (void)handleSwipeDownFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped down");
    if ([allCommands[index] isEqual: @"Swipe down"]) {
        NSLog(@"you win!");
        [self pickAndDisplayCommand];

    }
    else {
        NSLog(@"you lose!");
    }
}

- (void)handleSwipeLeftFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped left");
    if ([allCommands[index] isEqual: @"Swipe left"]) {
        NSLog(@"you win!");
        [self pickAndDisplayCommand];

    }
    else{
        NSLog(@"you lose!");
    }
}

- (void)handleSwipeRightFrom:(UIGestureRecognizer*)recognizer {
    NSLog(@"swiped right");
    if ([allCommands[index] isEqual: @"Swipe right"]) {
        NSLog(@"you win!");
        [self pickAndDisplayCommand];

    }
    else{
        NSLog(@"you lose!");
    }
}

-(void)pickAndDisplayCommand{
    index = arc4random() % 4;
    indexString = [NSString stringWithFormat:@"%i",index];
    commandLabel.text = [NSString stringWithFormat:@"%@",allCommands[index]];
    if (index == 1) {
        [checkArray addObject:indexString];
    }
    if (index == 2) {
        [checkArray addObject:indexString];
    }
    if (index == 3) {
        [checkArray addObject:indexString];
    }
    if (index == 4) {
        [checkArray addObject:indexString];
    }
    if (index == 5) {
        [checkArray addObject:@"3"];
        [checkArray addObject:@"4"];
    }
    if (index == 6) {
        [checkArray addObject:@"3"];
        [checkArray addObject:@"3"];
    }
    if (index == 7) {
        [checkArray addObject:@"3"];
        [checkArray addObject:@"2"];
    }
}


//@"Swipe left then right", @"Swipe left then up",@"Swipe left then left",@"Swipe left then down"


@end
