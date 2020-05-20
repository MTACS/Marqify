@interface UILabel (Marqify)
- (void)setMarqueeEnabled:(BOOL)arg1;
- (void)setMarqueeRunning:(BOOL)arg1;
- (void)_setLineBreakMode:(long long)arg1;
@end

%hook BSUIEmojiLabelView

- (long long)numberOfLines {

    return 1;

}

- (void)didMoveToWindow {

    %orig;

    UILabel *textLabel = MSHookIvar<UILabel *>(self, "_contentLabel");
    [textLabel setNumberOfLines:1];
    [textLabel setMarqueeEnabled:YES];
    [textLabel setMarqueeRunning:YES];
    [textLabel _setLineBreakMode:1];

}

%end