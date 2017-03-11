//
//  CharacterSetExtensions.swift
//  MoreCharacterSets
//
//  Copyright (C) 2017 Alexander Tovstonozhenko
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

// MARK: - Public -

extension CharacterSet {

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Lu
	/// (letter, uppercase).
	public static var Lu: CharacterSet {
		return _Lu
	}

	/// Returns a character set containing the characters in Unicode General Category Ll
	/// (letter, lowercase).
	public static var Ll: CharacterSet {
		return _Ll
	}

	/// Returns a character set containing the characters in Unicode General Category Lt
	/// (letter, titlecase).
	public static var Lt: CharacterSet {
		return _Lt
	}

	/// Returns a character set containing the characters in Unicode General Category Lm
	/// (letter, modifier).
	public static var Lm: CharacterSet {
		return _Lm
	}

	/// Returns a character set containing the characters in Unicode General Category Lo
	/// (letter, other).
	public static var Lo: CharacterSet {
		return _Lo
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Mn
	/// (mark, nonspacing).
	public static var Mn: CharacterSet {
		return _Mn
	}

	/// Returns a character set containing the characters in Unicode General Category Mc
	/// (mark, spacing combining).
	public static var Mc: CharacterSet {
		return _Mc
	}

	/// Returns a character set containing the characters in Unicode General Category Me
	/// (mark, enclosing).
	public static var Me: CharacterSet {
		return _Me
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Nd
	/// (number, decimal digit).
	public static var Nd: CharacterSet {
		return _Nd
	}

	/// Returns a character set containing the characters in Unicode General Category Nl
	/// (number, letter).
	public static var Nl: CharacterSet {
		return _Nl
	}

	/// Returns a character set containing the characters in Unicode General Category No
	/// (number, other).
	public static var No: CharacterSet {
		return _No
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Pc
	/// (punctuation, connector).
	public static var Pc: CharacterSet {
		return _Pc
	}

	/// Returns a character set containing the characters in Unicode General Category Pd
	/// (punctuation, dash).
	public static var Pd: CharacterSet {
		return _Pd
	}

	/// Returns a character set containing the characters in Unicode General Category Ps
	/// (punctuation, open).
	public static var Ps: CharacterSet {
		return _Ps
	}

	/// Returns a character set containing the characters in Unicode General Category Pe
	/// (punctuation, close).
	public static var Pe: CharacterSet {
		return _Pe
	}

	/// Returns a character set containing the characters in Unicode General Category Pi
	/// (punctuation, initial quote; may behave like Ps or Pe depending on usage).
	public static var Pi: CharacterSet {
		return _Pi
	}

	/// Returns a character set containing the characters in Unicode General Category Pf
	/// (punctuation, final quote; may behave like Ps or Pe depending on usage).
	public static var Pf: CharacterSet {
		return _Pf
	}

	/// Returns a character set containing the characters in Unicode General Category Po
	/// (punctuation, other).
	public static var Po: CharacterSet {
		return _Po
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Sm
	/// (symbol, math).
	public static var Sm: CharacterSet {
		return _Sm
	}

	/// Returns a character set containing the characters in Unicode General Category Sc
	/// (symbol, currency).
	public static var Sc: CharacterSet {
		return _Sc
	}

	/// Returns a character set containing the characters in Unicode General Category Sk
	/// (symbol, modifier).
	public static var Sk: CharacterSet {
		return _Sk
	}

	/// Returns a character set containing the characters in Unicode General Category So
	/// (symbol, other).
	public static var So: CharacterSet {
		return _So
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Zs
	/// (separator, space).
	public static var Zs: CharacterSet {
		return _Zs
	}

	/// Returns a character set containing the characters in Unicode General Category Zl
	/// (separator, line).
	public static var Zl: CharacterSet {
		return _Zl
	}

	/// Returns a character set containing the characters in Unicode General Category Zp
	/// (separator, paragraph).
	public static var Zp: CharacterSet {
		return _Zp
	}

	// MARK: -

	/// Returns a character set containing the characters in Unicode General Category Cc
	/// (other, control).
	public static var Cc: CharacterSet {
		return _Cc
	}

	/// Returns a character set containing the characters in Unicode General Category Cf
	/// (other, format).
	public static var Cf: CharacterSet {
		return _Cf
	}

	/// Returns a character set containing the characters in Unicode General Category Co
	/// (other, private use).
	public static var Co: CharacterSet {
		return _Co
	}

	/// Returns a character set containing the characters in Unicode General Category Cs
	/// (other, surrogate).
	public static var Cs: CharacterSet {
		return _Cs
	}

}

// MARK: - Private -

private class _Dummy {}

private let _bundle = Bundle(for: _Dummy.self)

private func _makeSet(_ resource: String) -> CharacterSet {
	return CharacterSet(contentsOfFile: _bundle.path(forResource: resource, ofType: "bitmap")!)!
}

private let _Cc = _makeSet("Cc")
private let _Cf = _makeSet("Cf")
private let _Co = _makeSet("Co")
private let _Cs = _makeSet("Cs")
private let _Ll = _makeSet("Ll")
private let _Lm = _makeSet("Lm")
private let _Lo = _makeSet("Lo")
private let _Lt = _makeSet("Lt")
private let _Lu = _makeSet("Lu")
private let _Mc = _makeSet("Mc")
private let _Me = _makeSet("Me")
private let _Mn = _makeSet("Mn")
private let _Nd = _makeSet("Nd")
private let _Nl = _makeSet("Nl")
private let _No = _makeSet("No")
private let _Pc = _makeSet("Pc")
private let _Pd = _makeSet("Pd")
private let _Pe = _makeSet("Pe")
private let _Pf = _makeSet("Pf")
private let _Pi = _makeSet("Pi")
private let _Po = _makeSet("Po")
private let _Ps = _makeSet("Ps")
private let _Sc = _makeSet("Sc")
private let _Sk = _makeSet("Sk")
private let _Sm = _makeSet("Sm")
private let _So = _makeSet("So")
private let _Zl = _makeSet("Zl")
private let _Zp = _makeSet("Zp")
private let _Zs = _makeSet("Zs")
