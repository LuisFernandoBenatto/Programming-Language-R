var add_ = function (x, y) {
    return x + y;
}
  
var add__ = function(x) {
    return function(y) {
      return x + y;
    }
}

function potencia(x, y) { return x**y }

var exp = function(expoente) {
    return function(base) {
        return base ** expoente
    }
}
console.log(exp(2)(3))

quadrado = exp(2)
console.log(quadrado(3))

cubo = exp(3)
console.log(cubo(4))
