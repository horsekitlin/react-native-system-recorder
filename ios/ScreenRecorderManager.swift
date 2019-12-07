//
//  ScreenRecorderManager.swift
//  rn_screen_recorder
//
//  Created by 林暐秦 on 2019/12/7.
//  Copyright © 2019 Facebook. All rights reserved.
//

@objc(ScreenRecorderManager)
class ScreenRecorderManager: RCTViewManager {
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    if #available(iOS 12.0, *) {
      return ScreenRecorder()
    } else {
      return nil
    }
  }
}
