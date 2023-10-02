Soma   = left:Mult "+" right:Soma { return left + right; }
       / Mult

Mult   = left:Exp "*" right:Mult { return left * right; }
       / Exp

Exp = "(" soma:Soma ")" { return soma; }
       / number:Number { return number; }

Number = digits:[0-9]+ { return parseInt(digits.join(''), 10); }