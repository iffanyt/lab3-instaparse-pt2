//
//  AppDelegate.swift
//  lab-insta-parse
//
//  Created by Charlie Hieger on 10/29/22.
//

import UIKit

// TODO: Pt 1 - Import Parse Swift
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // TODO: Pt 1 - Initialize Parse SDK

        // Add the following values from your Parse server.
        // For back4app hosted Parse servers:
        //   - App Settings tab -> Security & Keys -> App Keys -> applicationId + clientKey
        //   - App Settings tab -> App Management -> Parse API Address
        // https://github.com/parse-community/Parse-Swift/blob/main/ParseSwift.playground/Sources/Common.swift
        ParseSwift.initialize(applicationId: "ImLDg0ZwrTN0P3chiMPtQDeODQj70fTir8X75ZYn",
                              clientKey: "m1nmU2RAxv9rstNNwmfCirLAyQF82QtM2BNiSN6Q",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)

        // TODO: Pt 1: - Instantiate and save a test parse object to your server
        // https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L121



        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

// TODO: Pt 1 - Create Test Parse Object
// https://github.com/parse-community/Parse-Swift/blob/3d4bb13acd7496a49b259e541928ad493219d363/ParseSwift.playground/Pages/1%20-%20Your%20first%20Object.xcplaygroundpage/Contents.swift#L33

// Create your own value typed `ParseObject`.
struct GameScore: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Your own custom properties.
    // All custom properties must be optional.
    var playerName: String?
    var points: Int?
}




