//
//  ViewController.m
//  M3U8_Parser
//
//  Created by sami on 3/2/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *fileContents1 = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://edge.apigate.pro/channel1/ngrp:myStream_all/playlist.m3u8"] encoding:NSUTF8StringEncoding error:NULL];
    NSArray *lines1 = [fileContents1 componentsSeparatedByString:@"\n"];
    for (int i = 0;i<lines1.count;i++) {
        NSString *line = [lines1 objectAtIndex:i];
        if([line containsString:@"BANDWIDTH"]) {
            NSMutableDictionary *pairs = [NSMutableDictionary dictionary];
            line = [line stringByReplacingOccurrencesOfString:@"#EXT-X-STREAM-INF:" withString:@""];
            for (NSString *pairString in [line componentsSeparatedByString:@","]) {
                NSArray *pair = [pairString componentsSeparatedByString:@"="];
                if ([pair count] != 2)
                    continue;
                [pairs setObject:[pair objectAtIndex:1] forKey:[pair objectAtIndex:0]];
            }
            NSLog(@"array = %@",pairs);
        }
    }
}


@end
