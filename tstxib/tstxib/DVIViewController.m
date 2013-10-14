//
//  DVIViewController.m
//  tstxib
//
//  Created by apple  on 13-10-9.
//  Copyright (c) 2013年 microsoft. All rights reserved.
//

#import "DVIViewController.h"
#import "app.h"
@interface DVIViewController ()

@end

@implementation DVIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender
{
    
    
    
    app *ap = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"liuliang"];
    
    [self presentViewController:ap animated:YES completion:^{
        NSLog(@"ou yee");
    }];
}
@end
