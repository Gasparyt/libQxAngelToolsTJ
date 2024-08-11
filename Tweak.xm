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
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@HI THANKS FOR USE MY MOD" message:@"๛YOU CAN CHECK MY FUTURE  MODS ON MY GITHUBッ" preferredStyle:UIAlertControllerStyleAlert];

            // Website
            UIAlertAction *github.com/gasparyt = [UIAlertAction actionWithTitle:@"Github" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://github.com/gasparyt"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [GasparytsetValue:[UIColor yellowColor] forKey:@"titleTextColor"]; // Color amarillo
            [alertController addAction:GasparytWeb];

            // Instagram
            UIAlertAction *QxAngelIg = [UIAlertAction actionWithTitle:@"Instagram" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://www.instagram.com/miaag.0/"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [miaag.0Ig setValue:[UIColor blueColor] forKey:@"titleTextColor"]; // Color azul
            [alertController addAction:QxAngelIg];

            // Paypal
            UIAlertAction *GasparytPay = [UIAlertAction actionWithTitle:@"Donate Me Via Paypal" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                NSURL *url = [NSURL URLWithString:@"https://www.paypal.me/Gasparyt"];
                if ([[UIApplication sharedApplication] canOpenURL:url]) {
                    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                }
            }];
            [GasparytPay setValue:[UIColor colorWithRed:0.5 green:0.5 blue:1.0 alpha:1.0] forKey:@"titleTextColor"]; // Color azul claro
            [alertController addAction:GasparytPay];

            // Don't show again
            UIAlertAction *GasparytDSA = [UIAlertAction actionWithTitle:@"Don't show again" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kDontShowAgainKey];
                [[NSUserDefaults standardUserDefaults] synchronize];
            }];
            [GxspxrDSA setValue:[UIColor orangeColor] forKey:@"titleTextColor"]; // Color anaranjado
            [alertController addAction:QxAngelDSA];

            // Cancelar
            UIAlertAction *GasparytC = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
            [gasparytC setValue:[UIColor redColor] forKey:@"titleTextColor"]; // Color rojo
            [alertController addAction:GxpxrytC];

            // Presentar el UIAlertController
            [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alertController animated:YES completion:nil];
        }
    });
}
