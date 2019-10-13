#import "PNWKWebView.h"

@implementation PNWKWebView

- (instancetype)initWithCoder:(NSCoder *)coder {
    return [super initWithCoder:coder];

}

- (instancetype)initWithFrame:(CGRect)frame {
    return [super initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration *)configuration {

    UIMenuItem *item = [[UIMenuItem alloc] initWithTitle:@"Hey" action:@selector(highlight:)];
    [[UIMenuController sharedMenuController] setMenuItems:[NSArray arrayWithObjects:item, nil]];

    return [super initWithFrame:frame configuration:configuration];
}

- (void)highlight:(id)sender {
         //receive value of row here
     }

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(highlight:)) {
        return YES;
    }
    return NO;
}


@end
