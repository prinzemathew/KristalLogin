//
//  Extensions.swift
//  commonlogin
//
//  Created by Prince Mathew on 07/11/19.
//  Copyright © 2019 Prince Mathew. All rights reserved.
//

import Foundation
import CommonCrypto

extension Data {
    func sha256() -> String {
        var hash = [UInt8](repeating: 0, count:Int(CC_SHA256_DIGEST_LENGTH))
        CC_SHA256((self as NSData).bytes, CC_LONG(self.count), &hash)
        return hash.compactMap { String(format: "%02x", $0) }.joined()
    }
}

extension String {
    func sha256() -> String {
        guard let data = self.data(using: .utf8) else {
            return ""
        }
        return data.sha256()
    }
}
