//
//  ViewController.h
//  inappemail
//
//  Created by Baz on 6/21/14.
//  Copyright (c) 2014 Deal Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate> {
    
}
- (IBAction)sendEmail:(id)sender;

@end
