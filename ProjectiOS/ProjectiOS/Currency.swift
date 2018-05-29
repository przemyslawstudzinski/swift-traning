
import Foundation

struct Currency {
    
    let name: String
    let symbol: String
    let bidPrice: Double
    let askPrice: Double
    
    init(name: String, symbol: String, bidPrice: Double, askPrice: Double)  {
        self.name = name
        self.symbol = symbol
        self.bidPrice = bidPrice
        self.askPrice = askPrice
    }
    
    static let path = "http://api.nbp.pl/api/exchangerates/tables/C?format=json"
    
    static func getData (completion: @escaping ([Currency]?) -> ()) {
        
        let request = URLRequest(url: URL(string: path)!)
        
        let task = URLSession.shared.dataTask(with: request) { (data:Data?, response:URLResponse?, error:Error?) in
            
            if let error = error {
                print("Error:\(error)")
            } else {
                var currencyArray:[Currency] = []
                if let data = data {

                    if let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? NSArray {
                        if let object = jsonObject!.firstObject as? NSDictionary {
                    
                            if let array = object.value(forKey: "rates") as? NSArray {
                                //print("All data:\n\(array)")
                            
                                for currency in array {
                                    let cur = currency as! [String: Any]
                                    let name = cur["currency"] as! String
                                    let symbol = cur["code"] as! String
                                    let bid = cur["bid"] as! Double
                                    let ask = cur["ask"] as! Double
                                    currencyArray.append(Currency(name: name, symbol: symbol, bidPrice: bid, askPrice: ask))
                                    
                                }
                            }
                        }
                    }
                    completion(currencyArray)
                }
            }
        }
        task.resume()
    }
        
}
