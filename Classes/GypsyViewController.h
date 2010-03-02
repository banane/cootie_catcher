//
//  GypsyViewController.h
//  Gypsy
//
//  Created by Anna on 2/25/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
<<<<<<< HEAD:Classes/GypsyViewController.h
#include <AudioToolbox/AudioToolbox.h>
=======
>>>>>>> 7473f59e65a4a278a64d3dc2fb9ef90c63395d63:Classes/GypsyViewController.h

@interface GypsyViewController : UIViewController {

	IBOutlet UIButton *BlueButton;
<<<<<<< HEAD:Classes/GypsyViewController.h
	IBOutlet UIButton *YellowButton;
	IBOutlet UIButton *RedButton;
	IBOutlet UIButton *GreenButton;
	IBOutlet UIButton *AgainButton;

	IBOutlet UILabel *ColorLabel;
	IBOutlet UILabel *FortuneLabel;

	IBOutlet UIImageView *ClosedImageView;

	NSInteger stage;
	NSInteger lastState;


}

@property (nonatomic, retain) IBOutlet UIButton *BlueButton;
@property (nonatomic, retain) IBOutlet UIButton *YellowButton;
@property (nonatomic, retain) IBOutlet UIButton *RedButton;
@property (nonatomic, retain) IBOutlet UIButton *GreenButton;
@property (nonatomic, retain) IBOutlet UIButton *AgainButton;


@property (nonatomic, retain) IBOutlet UILabel *ColorLabel;
@property (nonatomic, retain) IBOutlet UILabel *FortuneLabel;
@property (nonatomic, retain) IBOutlet UIImageView *ClosedImageView;

@property (nonatomic) NSInteger stage;
@property (nonatomic) NSInteger lastState;


- (IBAction)click:(id)sender;
- (void)animateToy:(int)numTimes;
- (void)revealFortune:(int)fortuneID;
- (IBAction)playAgain:(id)sender;




=======
	IBOutlet UILabel *ColorLabel;
}


- (IBAction)clickBlue:(id)sender;
- (void)animateToy;

@property (nonatomic, retain) IBOutlet UIButton *BlueButton;
@property (nonatomic, retain) IBOutlet UILabel *ColorLabel;
>>>>>>> 7473f59e65a4a278a64d3dc2fb9ef90c63395d63:Classes/GypsyViewController.h


@end

