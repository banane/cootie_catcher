//
//  Sound.m
//  Gypsy
//
//  Created by Anna on 3/1/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "Sound.h"


@implementation Sound

+ (void) playSound {
	NSString *effect;
	NSString *type;

	effect = @"cootie";
	type = @"wav";
	
	NSString *path = [[NSBundle mainBundle] pathForResource:effect ofType:type];
	NSURL *url = [NSURL fileURLWithPath:path];	
	
	SystemSoundID soundID;
	
	AudioServicesCreateSystemSoundID ((CFURLRef)url, &soundID);
	AudioServicesPlaySystemSound(soundID);
}

- (void)dealloc {
	[super dealloc];
}

	@end