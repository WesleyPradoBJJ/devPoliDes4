import Foundation

func compactarNumero(valor: Int) -> String {
    switch valor {
    case 0..<1000:
        return "\(valor)"
    case 1000..<1000000:
        let milhares = Double(valor) / 1000
        if valor % 1000 == 0 {
            return "\(Int(milhares))K"
        } else {
            return String(format: "%.1fK", arguments: [milhares])
        }
    default:
        let milhoes = Double(valor) / 1000000
        if valor % 1000000 == 0 {
            return "\(Int(milhoes))M"
        } else {
            return String(format: "%.1fM", arguments: [milhoes])
        }
    }
}

print(compactarNumero(valor: 50)) // 50
print(compactarNumero(valor: 876)) // 876
print(compactarNumero(valor: 1000)) // 1k
print(compactarNumero(valor: 4321)) // 4.3k
print(compactarNumero(valor: 1000000)) // 1M
print(compactarNumero(valor: 7654321)) // 7.6M


