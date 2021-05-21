/*
  ==============================================================================

    SpriteKitView.h
    Created: 21 May 2021 1:37:29pm
    Author:  Julien Bloit

  ==============================================================================
*/

#pragma once
#include <JuceHeader.h>

#if JUCE_IOS
#define SpriteKitBase juce::UIViewComponent
#endif

#if JUCE_MAC
#define SpriteKitBase juce::NSViewComponent
#endif


class SpriteKitView : public SpriteKitBase
{
public:
    
    SpriteKitView ();
    
    void
    resized () override;
    
private:
    
    void*
    m_view = nullptr;
};
