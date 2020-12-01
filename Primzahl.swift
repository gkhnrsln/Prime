class Zahl {
	var zahl: Int = 0
}

/* Primzahl erbt von Zahl */
class Primzahl: Zahl {
	var primzahl: Int = 0

	func istPrimzahl(zahl : Int)->(Bool) {
        //print("Eingabe zahl", zahl)
		if(zahl < 2) {
            return false
		}
        else if (zahl == 2) {
            return true
        }
		else {
			for i in 2...zahl-1 {
				if((zahl%i) == 0) {
					return false
				}
			}
		}
		primzahl = zahl
		return true
	}

	func primzahlAusArray(zahlen: [Int])->([Int]) {
		var zArray = [Int]()
		for i in 0...zahlen.count-1 {
			if(istPrimzahl(zahl: zahlen[i]) == true) {
				zArray.append(zahlen[i])
			}
		}
		return zArray
	}
 
    func listePrime(n : Int) {
        if (n >= 2) {
            for i in 2...n {
                var teiler = 1
                var anzTeiler = 0
                //Teiler durchgehen
                while(teiler <= i) {
                    if(i % teiler == 0) {
                        anzTeiler = anzTeiler + 1
                    }
                    teiler = teiler + 1
                }
                //nur zwei Teiler? -> Prime
                if (anzTeiler == 2) {
                    print(i, " ")
                }
            }
        }
        else {
            print("Eingabe muss >= 2 sein")
        }
    }
}

/* "main" */
var p0 = Primzahl()
print("Bitte gib eine Zahl ein: ")

if let eingabe = readLine() {
    if let num = Int(eingabe) {
        //print(num)
        p0.zahl = num
    }
}

let isPime = p0.istPrimzahl(zahl: p0.zahl)
print("Ist Primzahl?: \(isPime) \n")


let zahlen: [Int] = [1,5,7,8,9]
print("Prüfe Zahlen aus: \(zahlen)")
let primzahlen: [Int] = p0.primzahlAusArray(zahlen: zahlen)
print("Primzahlen: \(primzahlen) \n")


//Ausgabe von Primzahlen
print("Bis zu welcher Zahl sollen die Primzahlen geprueft und ausgegeben werden? (Eingabe >= 2)")
if let eingabe2 = readLine() {
    if let num2 = Int(eingabe2) {
        p0.listePrime(n : num2)
    }
}


