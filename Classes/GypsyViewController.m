//
//  GypsyViewController.m
//  Gypsy - a game, cootie catcher- for kids, and for kids to learn how to program
//
//  Created by Anna on 2/25/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "GypsyViewController.h"

@implementation GypsyViewController

@synthesize BlueButton;
<<<<<<< HEAD:Classes/GypsyViewController.m
@synthesize YellowButton;
@synthesize RedButton;
@synthesize GreenButton;
@synthesize AgainButton;

@synthesize ColorLabel;
@synthesize FortuneLabel;

@synthesize ClosedImageView;

@synthesize stage;
@synthesize lastState;

- (IBAction)click:(id)sender;
{
	int flipTimes = 0;

	int buttonInt = [sender tag];
	

	if(stage == 0) { //color round- the char length of the word
		if(buttonInt == 1){
			flipTimes = 4; //blue
		}
		if(buttonInt == 2){ 
			flipTimes = 6; //yellow
		}
		if(buttonInt == 3){ 
			flipTimes = 5; //green
		}
		if(buttonInt == 4){ 
			flipTimes = 3; //red
		}
	} 
	if((stage ==1) || (stage ==2)){ // same values for 2nd and 3rd stages
		if(buttonInt == 1){			// blue
			if(lastState == 0){		// which number is showing on the picture
				flipTimes = 1;
			} else{
				flipTimes = 8;
			}
		}
		if(buttonInt == 2){ // yellow
			if(lastState == 0){ //tall
				flipTimes = 6;
			} else{
				flipTimes = 7;
			}
		}
		if(buttonInt == 3){ //green
			if(lastState == 0){ //tall
				flipTimes = 5;
			} else{
				flipTimes = 4;
			}
		}
		if(buttonInt == 4){ //red
			if(lastState == 0){ //tall
				flipTimes = 2;
			} else {
				flipTimes = 3;
			}
		}		
	}
					
			
	// different actions for each stage of play		
	
	if(stage <3 ){
		NSLog(@"in action area, fliptimes %d",flipTimes);
		NSLog(@"in action area, stage %d",stage);
		NSLog(@"in action area, buttonInt %d",buttonInt);
		NSLog(@"in action area, lastState %d", lastState);
		NSLog(@"------------end of stage --------");

		[self animateToy:flipTimes];

	}
	if(stage ==3){
		NSLog(@"in action area, revealFortune, fliptimes %d",flipTimes);
		[self revealFortune:flipTimes];
	}
}

- (IBAction) playAgain:(id)sender {
	[ClosedImageView setImage:[UIImage imageNamed:@"closed.png"]];
	FortuneLabel.hidden = YES;
	AgainButton.hidden = YES;

	ClosedImageView.hidden = NO;
	RedButton.hidden = NO;
	BlueButton.hidden = NO;
	GreenButton.hidden = NO;
	YellowButton.hidden = NO;
	
	// reset game state vars
	stage = 0;
	lastState = 0;
	
	NSLog(@"play again");
}

- (void) animateToy:(int)numTimes {
		
	NSString *imgString;
	imgString = @"";

	int alternator = lastState; // if it was tall or wide, remember that and establish alternator there.	
	
	NSMutableArray *imgArray;
	imgArray = [[NSMutableArray alloc] init];

	for(int i=1; i<=numTimes; i++){
				
		// flip alternator
		if(alternator==0){
			alternator++;
		} else {
			alternator--;
		}
				
		if(alternator == 1){
			imgString = @"wide.png";
		} else {
			imgString = @"tall.png";
		}

		[imgArray addObject:[UIImage imageNamed:imgString]];
				
		// store the last state of tall/wide for next stage
		if(i==numTimes){
			lastState = alternator;
		}
		
		if(i < numTimes){  
			[imgArray addObject:[UIImage imageNamed:@"closed.png"]]; // helps make it the "look" of the cootiecatcher
		}

	}
	
	ClosedImageView.animationImages = imgArray; 
	ClosedImageView.animationDuration = 2.0;// seconds 
	ClosedImageView.animationRepeatCount = 1; 

	[ClosedImageView startAnimating]; 	
	
	[imgArray release];
	
	if (lastState == 0){
		imgString = @"tall.png";
	} else {
		imgString = @"wide.png";
	}							
		// make sure it ends on the last state of wide/tall
	UIImage *img1 = [UIImage imageNamed:imgString];
	[ClosedImageView setImage:img1];

	stage ++; // there are 3 rounds of picking

}

- (void)revealFortune:(int)fortuneID{
	fortuneID --; // indexes start at 0 not 1
	NSArray *fortuneArray;
	fortuneArray = [[NSArray alloc] initWithObjects: 
					@"You will make an amazing pie."
					,@"You will be president."
					,@"Nobody knows your secret."
					,@"Giraffes are neat."
					,@"People don't get you, like I get you."
					,@"Give someone a dollar."
					,@"You will live in a mansion."
					,@"Someone will steal your pencil."
					,nil];
	NSString *fortuneString;
	fortuneString = @"";
	fortuneString = [fortuneArray objectAtIndex:fortuneID];

	ClosedImageView.hidden = YES;
	YellowButton.hidden = YES;
	BlueButton.hidden = YES;
	RedButton.hidden = YES;
	GreenButton.hidden = YES;
	
	AgainButton.hidden = NO;	
	[FortuneLabel setText:fortuneString];
	FortuneLabel.hidden = NO;

	NSLog(@"after again hidden bit, stage is :%d", stage);
	NSLog(@"this is the fortuneID %d",fortuneID);
}
=======
@synthesize ColorLabel;

- (IBAction)clickBlue:(id)sender;
{

//	ColorLabel.text = @"Blue";
//	BlueButton.hidden = YES;
	NSLog(@"log: %@ in clickBlue "); 

	[self animateToy];
	
}



- (void) animateToy {
//	NSLog(@" in animatecootie: %@");

	int numTimes = 4;
	int alternator = 0;
	
	NSMutableArray *imgArray = [NSMutableArray arrayWithObjects: 
						 [UIImage imageNamed:@"closed.png"],
						 nil]; 
	for(int i=0; i<numTimes; i++){
		if(alternator > 0){
			[imgArray addObject:[UIImage imageNamed:@"tall.png"]];
		} else {
			[imgArray addObject:[UIImage imageNamed:@"wide.png"]];
		}
		// flip alternator
		if(alternator > 0){
			alternator = 0;
		} else {
			alternator = 1;
		}
		[imgArray addObject:[UIImage imageNamed:@"closed.png"]]; // always end with closed to simulate cootie action
	}
	UIImageView *myAnimatedView = [UIImageView alloc]; 
	[myAnimatedView setFrame:CGRectMake(3, 43, 300, 320)];

	[myAnimatedView initWithImage:[UIImage imageNamed:@"closed.png"]];
	myAnimatedView.animationImages = imgArray; 
	myAnimatedView.animationDuration = 1.0;// seconds 
	myAnimatedView.animationRepeatCount = numTimes; 
	// 0 = loops forever
	[myAnimatedView startAnimating]; 
	[self.view addSubview:myAnimatedView];

	[myAnimatedView release];
}

>>>>>>> 7473f59e65a4a278a64d3dc2fb9ef90c63395d63:Classes/GypsyViewController.m


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

<<<<<<< HEAD:Classes/GypsyViewController.m
- (void)viewDidLoad {
	stage = 0;
	lastState = 0;
}

=======
>>>>>>> 7473f59e65a4a278a64d3dc2fb9ef90c63395d63:Classes/GypsyViewController.m
- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[BlueButton release];
<<<<<<< HEAD:Classes/GypsyViewController.m
	[YellowButton release];
	[AgainButton release];
	[RedButton release];
	[GreenButton release];
	
	[FortuneLabel release];
	[ColorLabel release];

	[ClosedImageView release];


=======
	[ColorLabel release];
>>>>>>> 7473f59e65a4a278a64d3dc2fb9ef90c63395d63:Classes/GypsyViewController.m
    [super dealloc];
}

@end
