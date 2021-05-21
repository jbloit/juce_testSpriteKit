/*
  ==============================================================================

    SpriteKitView.cpp
    Created: 21 May 2021 1:37:29pm
    Author:  Julien Bloit

  ==============================================================================
*/


#include <SpriteKit/SKView.h>
#include <SpriteKit/SKScene.h>
#include "GameScene.h"

#include "SpriteKitView.h"

SpriteKitView::SpriteKitView(){};


void SpriteKitView::resized ()
{
    if (!m_view)
    {
        const auto b = getLocalBounds ();
        if (!b.isEmpty())
        {
            CGRect rect;
            rect.origin.x = b.getX();
            rect.origin.y = b.getY();
            rect.size.height = b.getHeight();
            rect.size.width = b.getWidth();

            SKView* view = [[SKView alloc] initWithFrame:rect];

            SKScene* scene = [[GameScene alloc] initWithSize:view.bounds.size];

            [view presentScene:scene];

            view.showsFPS = YES;
            view.showsNodeCount = YES;
            
            
            
            m_view = view;
            setView (view);
        }
    }
}
