//
//  ModeANoteBlock.h
//  Amos
//
//  Created by Justin Rhoades on 10/17/10.
//  Copyright 2010 Anything Honest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Box2D/Box2D.h>

@interface ModeANoteBlock : UIView {
	b2BodyDef bodyDef;
	b2Body *body;
	NSString *blockType;
}

- (void)setBlockType:(NSString *)type;
- (void)setWorld:(b2World *)world;

@end
