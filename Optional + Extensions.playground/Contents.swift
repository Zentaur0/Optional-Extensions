import Foundation

extension Optional where Wrapped: ExpressibleByStringLiteral {
    var orEmpty: Wrapped {
        switch self {
        case .none:
            return ""
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped: ExpressibleByBooleanLiteral {
    var orFalse: Wrapped {
        switch self {
        case .none:
            return false
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped: ExpressibleByIntegerLiteral {
    var orZero: Wrapped {
        switch self {
        case .none:
            return 0
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped: ExpressibleByArrayLiteral {
    var orEmpty: Wrapped {
        switch self {
        case .none:
            return []
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped: ExpressibleByDictionaryLiteral {
    var orEmpty: Wrapped {
        switch self {
        case .none:
            return [:]
        case .some(let value):
            return value
        }
    }
}

extension Optional where Wrapped == Date {
    var orToday: Wrapped {
        switch self {
        case .none:
            return Date()
        case .some(let value):
            return value
        }
    }
}
