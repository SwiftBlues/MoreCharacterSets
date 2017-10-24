/*
 Code Snipet to create CharacterSet .bitmap files for Unicode Categories

 Just place the UnicodeData.txt file (can be found here: https://www.unicode.org/Public/10.0.0/ucd/UnicodeData.txt) in the playground Resources folder. Output files can be found in "~/Documents/Shared Playground Data" folder.
*/

import UIKit
import XCPlayground

let categories = ["Cc", "Co", "Cf", "Cs", "Ll", "Lm", "Lo", "Lt", "Lu", "Mc", "Me", "Mn", "Nd", "Nl", "No", "Pc", "Pd", "Pe", "Pf", "Pi", "Po", "Ps", "Sc", "Sk", "Sm", "So", "Zl", "Zp", "Zs"]

let path = Bundle.main.path(forResource: "UnicodeData", ofType: "txt")!
let data = try! String(contentsOfFile: path, encoding: .utf8)
let lines = data.components(separatedBy: .newlines)

func parseCategory(_ category: String) {
    let linesOfCategory = lines.filter { $0.contains(";\(category);") }
    let hexItems: [String] = linesOfCategory.map { $0.components(separatedBy: ";")[0] }
    let scalarItems: [Unicode.Scalar] = hexItems.flatMap { Unicode.Scalar(UInt32($0, radix: 16)!) }
    var charset = CharacterSet()
    scalarItems.forEach {
        charset.insert($0)
    }

    let url = XCPlaygroundSharedDataDirectoryURL.appendingPathComponent("\(category).bitmap")!
    try! charset.bitmapRepresentation.write(to: url)
}

categories.forEach {
    parseCategory($0)
}
