//
//  ScreenRecorder.swift
//  rn_screen_recorder
//
//  Created by 林暐秦 on 2019/12/7.
//  Copyright © 2019 Facebook. All rights reserved.
//


import UIKit
import ReplayKit

@available(iOS 12.0, *)
class ScreenRecorder: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    let pickerView = RPSystemBroadcastPickerView(frame: CGRect(x: 0,
        y: 0,
        width: 80,
        height: 80))
   pickerView.translatesAutoresizingMaskIntoConstraints = false
//   pickerView.preferredExtension = ScreenRecorder.kBroadcastExtensionBundleId
   pickerView.showsMicrophoneButton = false
   self.addSubview(pickerView)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
