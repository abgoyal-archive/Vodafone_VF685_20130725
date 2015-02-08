/** \file
 *  This OBJC source file was generated by $ANTLR version ${project.version} ${buildNumber}
 *
 *     -  From the grammar source file : T.g
 *     -                            On : 2011-05-06 19:14:23
 *     -                 for the lexer : TLexerLexer
 *
 * Editing it, at least manually, is not wise.
 *
 * ObjC language generator and runtime by Alan Condit, acondit|hereisanat|ipns|dotgoeshere|com.
 *
 *
*/
// $ANTLR ${project.version} ${buildNumber} T.g 2011-05-06 19:14:23


/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "TLexer.h"
/* ----------------------------------------- */


/* ============================================================================= */
/* =============================================================================
 * Start of recognizer
 */

/** As per Terence: No returns for lexer rules! */
@implementation TLexer // line 330

+ (void) initialize
{
    [ANTLRBaseRecognizer setGrammarFileName:@"T.g"];
}

+ (NSString *) tokenNameForType:(NSInteger)aTokenType
{
    return [[self getTokenNames] objectAtIndex:aTokenType];
}

+ (TLexer *)newTLexerWithCharStream:(id<ANTLRCharStream>)anInput
{
    return [[TLexer alloc] initWithCharStream:anInput];
}

- (id) initWithCharStream:(id<ANTLRCharStream>)anInput
{
    self = [super initWithCharStream:anInput State:[[ANTLRRecognizerSharedState newANTLRRecognizerSharedStateWithRuleLen:5+1] retain]];
    if ( self != nil ) {
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

/* ObjC Start of actions.lexer.methods */
/* ObjC end of actions.lexer.methods */
/* ObjC start methods() */
/* ObjC end methods() */

/* Start of Rules */
// $ANTLR start "T__7"
- (void) mT__7
{
    //
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
        NSInteger _type = T__7;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // T.g:7:6: ( 'enum' ) // ruleBlockSingleAlt
        // T.g:7:8: 'enum' // alt
        {
        [self matchString:@"enum"]; 



        }

        // token+rule list labels

        state.type = _type;
        state.channel = _channel;
    }
    @finally {
        //
        /* Terence's stuff */

    }
    return;
}
/* $ANTLR end "T__7" */

// $ANTLR start "ID"
- (void) mID
{
    //
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
        NSInteger _type = ID;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // T.g:37:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* ) // ruleBlockSingleAlt
        // T.g:37:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* // alt
        {
        if ((([input LA:1] >= 'A') && ([input LA:1] <= 'Z'))||[input LA:1] == '_'||(([input LA:1] >= 'a') && ([input LA:1] <= 'z'))) {
            [input consume];
        } else {
            ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException newException:nil stream:input];
            [self recover:mse];
            @throw mse;
        }


        do {
            NSInteger alt1=2;
            NSInteger LA1_0 = [input LA:1];
            if ( ((LA1_0 >= '0' && LA1_0 <= '9')||(LA1_0 >= 'A' && LA1_0 <= 'Z')||LA1_0=='_'||(LA1_0 >= 'a' && LA1_0 <= 'z')) ) {
                alt1=1;
            }


            switch (alt1) {
                case 1 : ;
                    // T.g: // alt
                    {
                    if ((([input LA:1] >= '0') && ([input LA:1] <= '9'))||(([input LA:1] >= 'A') && ([input LA:1] <= 'Z'))||[input LA:1] == '_'||(([input LA:1] >= 'a') && ([input LA:1] <= 'z'))) {
                        [input consume];
                    } else {
                        ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException newException:nil stream:input];
                        [self recover:mse];
                        @throw mse;
                    }


                    }
                    break;

                default :
                    goto loop1;
            }
        } while (YES);
        loop1: ;


        }

        // token+rule list labels

        state.type = _type;
        state.channel = _channel;
    }
    @finally {
        //
        /* Terence's stuff */

    }
    return;
}
/* $ANTLR end "ID" */

// $ANTLR start "INT"
- (void) mINT
{
    //
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
        NSInteger _type = INT;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // T.g:40:5: ( ( '0' .. '9' )+ ) // ruleBlockSingleAlt
        // T.g:40:7: ( '0' .. '9' )+ // alt
        {
        // T.g:40:7: ( '0' .. '9' )+ // positiveClosureBlock
        NSInteger cnt2 = 0;
        do {
            NSInteger alt2 = 2;
            NSInteger LA2_0 = [input LA:1];
            if ( ((LA2_0 >= '0' && LA2_0 <= '9')) ) {
                alt2=1;
            }


            switch (alt2) {
                case 1 : ;
                    // T.g: // alt
                    {
                    if ((([input LA:1] >= '0') && ([input LA:1] <= '9'))) {
                        [input consume];
                    } else {
                        ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException newException:nil stream:input];
                        [self recover:mse];
                        @throw mse;
                    }


                    }
                    break;

                default :
                    if ( cnt2 >= 1 )
                        goto loop2;
                    ANTLREarlyExitException *eee =
                        [ANTLREarlyExitException newException:input decisionNumber:2];
                    @throw eee;
            }
            cnt2++;
        } while (YES);
        loop2: ;


        }

        // token+rule list labels

        state.type = _type;
        state.channel = _channel;
    }
    @finally {
        //
        /* Terence's stuff */

    }
    return;
}
/* $ANTLR end "INT" */

// $ANTLR start "WS"
- (void) mWS
{
    //
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
        NSInteger _type = WS;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // T.g:43:5: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ ) // ruleBlockSingleAlt
        // T.g:43:9: ( ' ' | '\\t' | '\\r' | '\\n' )+ // alt
        {
        // T.g:43:9: ( ' ' | '\\t' | '\\r' | '\\n' )+ // positiveClosureBlock
        NSInteger cnt3 = 0;
        do {
            NSInteger alt3 = 2;
            NSInteger LA3_0 = [input LA:1];
            if ( ((LA3_0 >= '\t' && LA3_0 <= '\n')||LA3_0=='\r'||LA3_0==' ') ) {
                alt3=1;
            }


            switch (alt3) {
                case 1 : ;
                    // T.g: // alt
                    {
                    if ((([input LA:1] >= '\t') && ([input LA:1] <= '\n'))||[input LA:1] == '\r'||[input LA:1] == ' ') {
                        [input consume];
                    } else {
                        ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException newException:nil stream:input];
                        [self recover:mse];
                        @throw mse;
                    }


                    }
                    break;

                default :
                    if ( cnt3 >= 1 )
                        goto loop3;
                    ANTLREarlyExitException *eee =
                        [ANTLREarlyExitException newException:input decisionNumber:3];
                    @throw eee;
            }
            cnt3++;
        } while (YES);
        loop3: ;


         _channel=99; 


        }

        // token+rule list labels

        state.type = _type;
        state.channel = _channel;
    }
    @finally {
        //
        /* Terence's stuff */

    }
    return;
}
/* $ANTLR end "WS" */

- (void) mTokens
{
    // T.g:1:8: ( T__7 | ID | INT | WS ) //ruleblock
    NSInteger alt4=4;
    unichar charLA4 = [input LA:1];
    switch (charLA4) {
        case 'e': ;
            {
            NSInteger LA4_1 = [input LA:2];

            if ( (LA4_1=='n') ) {
                NSInteger LA4_5 = [input LA:3];

                if ( (LA4_5=='u') ) {
                    NSInteger LA4_6 = [input LA:4];

                    if ( (LA4_6=='m') ) {
                        NSInteger LA4_7 = [input LA:5];

                        if ( ((LA4_7 >= '0' && LA4_7 <= '9')||(LA4_7 >= 'A' && LA4_7 <= 'Z')||LA4_7=='_'||(LA4_7 >= 'a' && LA4_7 <= 'z')) ) {
                            alt4=2;
                        }
                        else {
                            alt4 = 1;
                        }
                    }
                    else {
                        alt4 = 2;
                    }
                }
                else {
                    alt4 = 2;
                }
            }
            else {
                alt4 = 2;
            }
            }
            break;
        case 'A': ;
        case 'B': ;
        case 'C': ;
        case 'D': ;
        case 'E': ;
        case 'F': ;
        case 'G': ;
        case 'H': ;
        case 'I': ;
        case 'J': ;
        case 'K': ;
        case 'L': ;
        case 'M': ;
        case 'N': ;
        case 'O': ;
        case 'P': ;
        case 'Q': ;
        case 'R': ;
        case 'S': ;
        case 'T': ;
        case 'U': ;
        case 'V': ;
        case 'W': ;
        case 'X': ;
        case 'Y': ;
        case 'Z': ;
        case '_': ;
        case 'a': ;
        case 'b': ;
        case 'c': ;
        case 'd': ;
        case 'f': ;
        case 'g': ;
        case 'h': ;
        case 'i': ;
        case 'j': ;
        case 'k': ;
        case 'l': ;
        case 'm': ;
        case 'n': ;
        case 'o': ;
        case 'p': ;
        case 'q': ;
        case 'r': ;
        case 's': ;
        case 't': ;
        case 'u': ;
        case 'v': ;
        case 'w': ;
        case 'x': ;
        case 'y': ;
        case 'z': ;
            {
            alt4=2;
            }
            break;
        case '0': ;
        case '1': ;
        case '2': ;
        case '3': ;
        case '4': ;
        case '5': ;
        case '6': ;
        case '7': ;
        case '8': ;
        case '9': ;
            {
            alt4=3;
            }
            break;
        case '\t': ;
        case '\n': ;
        case '\r': ;
        case ' ': ;
            {
            alt4=4;
            }
            break;

    default: ;
        ANTLRNoViableAltException *nvae = [ANTLRNoViableAltException newException:4 state:0 stream:input];
        nvae.c = charLA4;
        @throw nvae;

    }

    switch (alt4) {
        case 1 : ;
            // T.g:1:10: T__7 // alt
            {
            [self mT__7]; 



            }
            break;
        case 2 : ;
            // T.g:1:15: ID // alt
            {
            [self mID]; 



            }
            break;
        case 3 : ;
            // T.g:1:18: INT // alt
            {
            [self mINT]; 



            }
            break;
        case 4 : ;
            // T.g:1:22: WS // alt
            {
            [self mWS]; 



            }
            break;

    }

}

@end /* end of TLexer implementation line 397 */