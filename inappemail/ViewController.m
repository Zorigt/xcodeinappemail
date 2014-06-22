//
//  ViewController.m
//  inappemail
//
//  Created by Baz on 6/21/14.
//  Copyright (c) 2014 Deal Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)sendEmail:(id)sender {
    MFMailComposeViewController * composer = [[MFMailComposeViewController alloc] init];
    [composer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail]) {
        [composer setToRecipients:[NSArray arrayWithObjects:@"email@email.com", nil]];
        [composer setSubject:@"New Awsome App"];
        [composer setMessageBody:@"Hello, \nIt's an app that sends email." isHTML:NO];
        [composer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:composer animated:YES];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Erronous" message:@"E has occurred" delegate:nil cancelButtonTitle:@"Let's do this" otherButtonTitles:nil, nil];
        [alert show];
    }
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Errata" message:@"It has occuren!" delegate:nil cancelButtonTitle:@"Okey" otherButtonTitles:nil, nil];
        [alert show];
        [self dismissModalViewControllerAnimated:YES];
    }
}
@end
