#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// Clave
#define kDontShowAgainKey @"DontShowAgain"

// Constructor estático que se ejecuta al cargar la aplicación
__attribute__((constructor))
static void init() {
// Retrasa la ejecución del bloque de código por 3 segundos
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (![[NSUserDefaults standardUserDefaults] boolForKey:kDontShowAgainKey]) {
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"¡HI! THANKS FOR USING MY MOD" message:@"YOU CAN SUPPORT ME BY DONATING. MORE APPS ON MY WEBSITE" preferredStyle:UIAlertControllerStyleAlert];

            // Website
            UIAlertAction *QxAngelWeb = [UIAlertAction actionWithTitle:@"Latest iPAS updates HERE" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://qxangel.github.io"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [QxAngelWeb setValue:[UIColor yellowColor] forKey:@"titleTextColor"]; // Color amarillo
            [alertController addAction:QxAngelWeb];

            // Instagram
            UIAlertAction *QxAngelIg = [UIAlertAction actionWithTitle:@"Instagram" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://www.instagram.com/6ky_l/"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [QxAngelIg setValue:[UIColor blueColor] forKey:@"titleTextColor"]; // Color azul
            [alertController addAction:QxAngelIg];

            // Paypal
            UIAlertAction *QxAngelPay = [UIAlertAction actionWithTitle:@"Donate Me Via Paypal" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://www.paypal.me/onlykex1"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [QxAngelPay setValue:[UIColor colorWithRed:0.5 green:0.5 blue:1.0 alpha:1.0] forKey:@"titleTextColor"]; // Color azul claro
            [alertController addAction:QxAngelPay];

            // Don't show again
            UIAlertAction *QxAngelDSA = [UIAlertAction actionWithTitle:@"Don't show again" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kDontShowAgainKey];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }];
            [QxAngelDSA setValue:[UIColor orangeColor] forKey:@"titleTextColor"]; // Color anaranjado
            [alertController addAction:QxAngelDSA];

            // Cancelar
            UIAlertAction *QxAngelC = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
            [QxAngelC setValue:[UIColor redColor] forKey:@"titleTextColor"]; // Color rojo
            [alertController addAction:QxAngelC];

            // Presentar el UIAlertController
            [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alertController animated:YES completion:nil];
        }
    });
}