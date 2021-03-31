import Foundation

class Debugger: Plugin {

    // MARK: Public Property(ies)

    var environment: Environment = {
        return Environment.current
    }()

    // MARK: - Public Function(s).

    func log(info message: String, source: String) {
        print("\(source): \(message)")       
    }
}