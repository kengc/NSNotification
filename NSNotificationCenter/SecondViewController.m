//
//  SecondViewController.m
//  NSNotificationCenter
//
//  Created by Kevin Cleathero on 2017-06-11.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayStepperValueVar;

@property (nonatomic) NSNumber *viewNotAvailVal;

@end

@implementation SecondViewController


- (instancetype)init:(CGRect)frame
{
    self = [super init];
    if (self) {
        //_path = [[UIBezierPath alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observeStepperValueChange:) name:@"stepperChangeHasHappened" object:nil];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observeStepperValueChange:) name:@"stepperChangeHasHappened" object:nil];
    }
    
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                     name:@"stepperChangeHasHappened"
                                                  object:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observeStepperValueChange:) name:@"stepperChangeHasHappened" object:nil];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.displayStepperValueVar.text = [NSString stringWithFormat:@"%@", self.viewNotAvailVal];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observeStepperValueChange:) name:@"stepperChangeHasHappened" object:nil];
    
}

-(void)observeStepperValueChange:(NSNotification *)notification{
    
    NSDictionary *userInfo = notification.userInfo;
    
    NSNumber *view1Value = [userInfo objectForKey:@"stepValue"];
    
    self.viewNotAvailVal = view1Value;
   
    self.displayStepperValueVar.text = [NSString stringWithFormat:@"%@", view1Value];
    
    NSLog(@"NSNOTIFCATION RECEiVED");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
