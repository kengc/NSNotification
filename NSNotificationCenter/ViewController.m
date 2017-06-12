//
//  ViewController.m
//  NSNotificationCenter
//
//  Created by Kevin Cleathero on 2017-06-11.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepperVar;
@property (nonatomic) NSMutableDictionary *notifiationDictionary;

@end




@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    _notifiationDictionary = [[NSMutableDictionary alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)stepperAction:(UIStepper *)sender {
    
    //get reference to NSNotifiation
    
    NSNumber *stepperValue = [NSNumber numberWithDouble:sender.value];
    
    [self.notifiationDictionary setValue:stepperValue forKey:@"stepValue"];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"stepperChangeHasHappened" object:nil userInfo:self.notifiationDictionary];
}



@end
