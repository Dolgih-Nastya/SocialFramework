//
//  SFTActivityViewController.m
//  SocialFrameworkTest
//
//  Created by Анастасия Долгих on 6/17/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "SFTActivityViewController.h"

@interface SFTActivityViewController ()
@property(nonatomic, strong) IBOutlet UITextView *textView;
@end

@implementation SFTActivityViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onShare:(id)sender {
    NSString *text = self.textView.text;
    NSArray *items = @[text];
    
    UIActivityViewController *activity = [[UIActivityViewController alloc]
                                          initWithActivityItems:items
                                          applicationActivities:nil];
    
    [self presentViewController:activity animated:YES completion:nil];
}


@end
