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
    checkArray = [[NSMutableArray alloc] init];;
    commandArray = [[NSMutableArray alloc] init];
    allCommands = [NSArray arrayWithObjects:@"Swipe up",@"Swipe down",@"Swipe left",@"Swipe right",@"Swipe left then up", @"Swipe left then down",@"Swipe left then left",@"Swipe left then right",@"Swipe up then up", @"Swipe up then down",@"Swipe up then left",@"Swipe up then right",@"Swipe down then up", @"Swipe down then down",@"Swipe down then left",@"Swipe down then right",@"Swipe right then up", @"Swipe right then down",@"Swipe right then left",@"Swipe right then right", @"Swipe anywhere but up", @"Swipe anywhere but down",@"Swipe anywhere but left",@"Swipe anywhere but right", nil];
    [self pickAndDisplayCommand];
    NSLog(@"%@,%@",checkArray, commandArray);
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
    [checkArray addObject:@"0"];
    
    if (index < 20) {
        if ([checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        if ((checkArray.count == 2) && (![commandArray isEqualToArray:checkArray])) {
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
        }

    }
    
    else {
        if (![checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        else{
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];

        }
    }
    
}

- (void)handleSwipeDownFrom:(UIGestureRecognizer*)recognizer {
    [checkArray addObject:@"1"];
    if (index < 20) {
        if ([checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        if ((checkArray.count == 2) && (![commandArray isEqualToArray:checkArray])) {
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
        }
        
    }
    
    else {
        if (![checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        else{
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
            
        }
    }
    
}

- (void)handleSwipeLeftFrom:(UIGestureRecognizer*)recognizer {
    [checkArray addObject:@"2"];
    if (index < 20) {
        if ([checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        if ((checkArray.count == 2) && (![commandArray isEqualToArray:checkArray])) {
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
        }
        
    }
    
    else {
        if (![checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        else{
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
            
        }
    }
    
}

- (void)handleSwipeRightFrom:(UIGestureRecognizer*)recognizer {
    [checkArray addObject:@"3"];
    if (index < 20) {
        if ([checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        if ((checkArray.count == 2) && (![commandArray isEqualToArray:checkArray])) {
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
        }
        
    }
    
    else {
        if (![checkArray isEqualToArray:commandArray]) {
            NSLog(@"youwin!");
            [self pickAndDisplayCommand];
        }
        else{
            NSLog(@"youlose!");
            [self pickAndDisplayCommand];
            
        }
    }
    
}

-(void)pickAndDisplayCommand{
    [commandArray removeAllObjects];
    [checkArray removeAllObjects];
    
    index = arc4random() % 24;
    commandLabel.text = [NSString stringWithFormat:@"%@",allCommands[index]];
    if (index == 0) {
        [commandArray addObject:@"0"];
    }
    if (index == 1) {
        [commandArray addObject:@"1"];
    }
    if (index == 2) {
        [commandArray addObject:@"2"];
    }
    if (index == 3) {
        [commandArray addObject:@"3"];
    }
    if (index == 4) {
        [commandArray addObject:@"2"];
        [commandArray addObject:@"0"];
    }
    if (index == 5) {
        [commandArray addObject:@"2"];
        [commandArray addObject:@"1"];
    }
    if (index == 6) {
        [commandArray addObject:@"2"];
        [commandArray addObject:@"2"];
    }
    if (index == 7) {
        [commandArray addObject:@"2"];
        [commandArray addObject:@"3"];
    }
    if (index == 8) {
        [commandArray addObject:@"0"];
        [commandArray addObject:@"0"];
    }
    if (index == 9) {
        [commandArray addObject:@"0"];
        [commandArray addObject:@"1"];
    }
    if (index == 10) {
        [commandArray addObject:@"0"];
        [commandArray addObject:@"2"];
    }
    if (index == 11) {
        [commandArray addObject:@"0"];
        [commandArray addObject:@"3"];
    }
    if (index == 12) {
        [commandArray addObject:@"1"];
        [commandArray addObject:@"0"];
    }
    if (index == 13) {
        [commandArray addObject:@"1"];
        [commandArray addObject:@"1"];
    }
    if (index == 14) {
        [commandArray addObject:@"1"];
        [commandArray addObject:@"2"];
    }
    if (index == 15) {
        [commandArray addObject:@"1"];
        [commandArray addObject:@"3"];
    }
    if (index == 16) {
        [commandArray addObject:@"3"];
        [commandArray addObject:@"0"];
    }
    if (index == 17) {
        [commandArray addObject:@"3"];
        [commandArray addObject:@"1"];
    }
    if (index == 18) {
        [commandArray addObject:@"3"];
        [commandArray addObject:@"2"];
    }
    if (index == 19) {
        [commandArray addObject:@"3"];
        [commandArray addObject:@"3"];
    }
    if (index == 20) {
        [commandArray addObject:@"0"];
    }
    if (index == 21) {
        [commandArray addObject:@"1"];
    }
    if (index == 22) {
        [commandArray addObject:@"2"];
    }
    if (index == 23) {
        [commandArray addObject:@"3"];
    }
}


//@"Swipe left then right", @"Swipe left then up",@"Swipe left then left",@"Swipe left then down"


@end
