// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: UserCredentials.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct UserCredentialsProto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var email: String {
    get { return _email ?? String() }
    set { _email = newValue }
  }
  /// Returns true if `email` has been explicitly set.
  public var hasEmail: Bool { return self._email != nil }
  /// Clears the value of `email`. Subsequent reads from it will return its default value.
  public mutating func clearEmail() { self._email = nil }

  public var password: String {
    get { return _password ?? String() }
    set { _password = newValue }
  }
  /// Returns true if `password` has been explicitly set.
  public var hasPassword: Bool { return self._password != nil }
  /// Clears the value of `password`. Subsequent reads from it will return its default value.
  public mutating func clearPassword() { self._password = nil }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _email: String? = nil
  fileprivate var _password: String? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension UserCredentialsProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase,
  SwiftProtobuf._ProtoNameProviding
{
  public static let protoMessageName: String = "UserCredentialsProto"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "email"),
    2: .same(proto: "password"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self._email)
      case 2: try decoder.decodeSingularStringField(value: &self._password)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._email {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    if let v = self._password {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func == (lhs: UserCredentialsProto, rhs: UserCredentialsProto) -> Bool {
    if lhs._email != rhs._email { return false }
    if lhs._password != rhs._password { return false }
    if lhs.unknownFields != rhs.unknownFields { return false }
    return true
  }
}
