//
//  ModeAViewController.h
//  Amos
//
//  Created by Justin Rhoades on 10/16/10.
//  Copyright 2010 Anything Honest. All rights reserved.
//

#define PTM_RATIO 16

#define CORNER_TOPLEFT @"CORNER_TOPLEFT"
#define CORNER_TOPRIGHT @"CORNER_TOPRIGHT"
#define CORNER_BOTLEFT @"CORNER_BOTLEFT"
#define CORNER_BOTRIGHT @"CORNER_BOTRIGHT"


#import <UIKit/UIKit.h>
#import <Box2D/Box2D.h>
#import "ModeAContactListener.h"

@class NoteBall;
@class ModeACorner;

@interface ModeAViewController : UIViewController <UIAccelerometerDelegate, UIGestureRecognizerDelegate> {
	b2World *world;
	NSTimer *tickTimer;
	b2Body* groundBody;
	ModeAContactListener *contactListener;
	NoteBall *ballA;
	NoteBall *ballB;
	NoteBall *ballC;
	ModeACorner *cornerA;
	ModeACorner *cornerB;
	ModeACorner *cornerC;
	ModeACorner *cornerD;
}

-(void) createPhysicsWorld;
-(void) addPhysicalBodyForView:(UIView *)physicalView;
-(void) tick:(NSTimer *)timer;
-(void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
-(void) panBallA:(UIPanGestureRecognizer *)gestureRecognizer;
-(void) panBallB:(UIPanGestureRecognizer *)gestureRecognizer;
-(void) panBallC:(UIPanGestureRecognizer *)gestureRecognizer;
-(CGPoint) convertToGL:(CGPoint)uiPoint;

@end

