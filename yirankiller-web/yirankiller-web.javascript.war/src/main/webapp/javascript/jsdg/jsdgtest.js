/**
 * User: easliu
 * Date: 7/26/12
 * Version: 1.0
 */
window.localStorage;
$(function(){


    /*
    alert(text.split(/\D+/))               ;
    */
    /*
    var text = "testing: 11, 2, 3";
    var pattern = /\d+/g
    pattern.test(text)               ;
    text.search(pattern)             ;
    text.match(pattern)              ;
    alert(text.replace(pattern, "#"));
      */
    /*
    var o = {};
    var c = {};
    var b = false;
    o.bj = "beijing";
    alert(typeof o);
    alert(typeof c);
    if(o === null){

    }
    if(c == null){

    }
    alert(typeof b);
    alert(typeof o);
    alert(typeof c);
    */
    //-------------------------The six type
    /*
    alert(true.toString());
    //primitive types

    alert(typeof null);
    alert(typeof undefined);
    alert(typeof 3);
    alert(typeof "d");
    alert(typeof true);

    // object types

    alert(typeof {});
    */
    //-----------------------------
    /*
    undefined = "d ";
    alert(typeof undefined);
    */
    // equality of null and undefined
    /*
    alert(null === undefined);
    alert(null == undefined);
    */

    //---------------------------------------------------------warp object
    /*
     var s = "test";
     s.len = 4;
     var t = s.len;
     alert(t);

     s.length = 9;
     var l = s.length;
     alert(l);
     var S = new String("s");
     alert(typeof S);
     alert(typeof s);
     alert(s === S);
     alert(s == S);

     alert(s[1]);
     */

    //----------------------------------------------------------equality between primitive and warp object
    /*
    var s = "test";
    var S = new String("test");

    alert(s === S);
    alert(s == S);

    var b = false;
    var B = Boolean(false);

    alert(b === B);
    alert(b == B);

    var n = 5;
    var N = Number(5);
    alert(n === N);
    alert(n == N);
    */
    //-----------------------------------------------------------Explicit Conversions
    /*
    var s = String("s")
    alert(typeof s);
    var S = new String("s")
    alert(typeof S);

    var n = Number(3)
    alert(typeof n);
    var N = new String(3)
    alert(typeof N);

    //convert rely on some base.
    var d = 022;
    alert(d.toString(10));

    // toFix toExp
    var tf = 22.371;
    alert(tf.toFixed(2));
    // parseInt 3.8.2
     */
    //------------------------------------------------------------Object to Primitive Conversions
    /*
    if(new Boolean(false)){
        alert(true);
    }
    alert(typeof new Boolean(false));
    alert(!new Boolean(false));

    alert(({}).toString());
    alert(([3]).toString());
    alert(([32,4]).valueOf());

    logger.evalLog("/\d+/g.toString()");

    logger.evalLog("new Date(2010,0,1).toString()");
    logger.evalLog("/\d+/g.valueOf()");
    logger.evalLog("typeof [1].valueOf()");
    logger.evalLog("typeof ['s'].toString()");

    logger.evalLog("var now = new Date();now == now.toString()");
     */
    //-------------------------------------------------------------javascript function scope
    /*
    function scopeBig(){
        var scope = "local";
        function scopeSmall(){
            var d = "localSmall";
        }
        return d;
    }
    alert(scopeBig());
    */
    //3.10.3
    //Invocation
    /*
    var undfArrya = [1,,,,3,];
    logger.evalLog("var undfArrya = [1,,,,3];undfArrya.length");
    var obj = {x:1};
    alert(obj["x"]);
    */
    //Object creation exp
    /*
    logger.evalLog("d = new Date;d.getTime()");
    */
    /*
    function costr(){

    }
    var cobj = new costr();
    alert(cobj instanceof costr);
    alert(~11);
    */
    /*
    var f = 12;
    var s = ~-f;
    alert(s);
    */
    /*
    var o = { x : 1 };
    var p = null;
    alert(true && o.x);
    alert(p && p.x);
    */
    // eval
    /*
    var d="def";
    alert(eval("d"));
    */
    //此代码要放到$.ready外边才能正常
    /*
    var x = "global";
    var y = "global";                    // Two global variables
    function f() {                       // This function does a local eval
        var x = "local";                 // Define a local variable
        eval("x += 'changed';");         // Direct eval sets local variable
        return x;                        // Return changed local variable
    }
    var geval = eval;                    // Using another name does a global eval
    function g() {                       // This function does a global eval
        var y = "local";                 // A local variable
        geval("var y;y += 'changed';");        // Indirect eval sets global variable
        return y;                        // Return unchanged local variable
    }
    console.log(f(), x);                 // Local variable changed: prints "localchanged global":
    console.log(g(), y);
    */
    // 6.1
    // inherit() returns a newly created object that inherits properties from the
    // prototype object p. It uses the ECMAScript 5 function Object.create() if
    // it is defined, and otherwise falls back to an older technique.
    
    function inherit(p) {
        if (p == null) throw TypeError(); // p must be a non-null object
        if (Object.create)
            // If Object.create() is defined...
            return Object.create(p);
            //              then just use it.
            var t = typeof p;
        // Otherwise do some more type checking
        if (t !== "object" && t !== "function") throw TypeError();
        function f() {};
        // Define a dummy constructor function.
        f.prototype = p;
        // Set its prototype property to p.
        return new f();
        // Use f() to create an "heir" of p.
    }
/*
    var o = { x: "don't change this value" };
    d(inherit(o));
    function d(f){
        alert(f.x);
        f.x = "this is f property";
    }
    alert(o.x);
    */
    //
    /*
    var o = inherit({ y: 2 });
    o.x = 1;
    alert(o.propertyIsEnumerable("x")); // true: o has an own enumerable property x
    alert(o.propertyIsEnumerable("y")); // false: y is inherited, not own
    alert(Object.prototype.propertyIsEnumerable("toString"));
    
    var d = null;
    var s = undefined;
    alert(d == s);
    */
    //getter and setter.
    /*
    var withGS = {
	age : 12,
    	get agef(){
	    return this.age;
        },
	set agef(ages){
	    this.age = ages + 3;
	}
    };
    withGS.agef = 13;
    alert(withGS.agef);
    */
    //6.7 property attribute
//    alert(Object.getOwnPropertyDescriptor({}, "toString"));
// sparse array
/*
var a1 = [1,,3,];
var a2 = new Array(3);
alert(1 in a1);
alert(0 in a2);
alert(a1.length);
alert(a2.length);
*/
    //add delete array
/*
    a = [1,2,3];
    delete a[1];
    alert(1 in a);
    alert(a.length);
*/
    //
    /*
    var arrT = [1,23,54];
    arrT.forEach(function(data){
	    alert(data);  
        });
    });
    */
    /*
    var strict = (function() { return !this; }());
    alert(strict);
    */
    // arguments Object
    /*
    (function(x,y){
	alert(typeof arguments.caller);

    })();
    */
    // closures
    /*
    var uniqueInteger = (function() {// Define and invoke
	var counter = 0; // Private state of function below
	return function() { return counter++; };
    }());
    
    alert(uniqueInteger());
    */
	/*
	var scope = "global scope";
	function checkscope() {
	var scope = "local scope";
	function f() { return scope; }
	return f;
	}
	alert(checkscope()());
	*/
    // Return an array of functions that return the values 0-9
/*
function constfuncs() {
var funcs = [];
for(var i = 0; i < 10; i++)
funcs[i] = function() { return i; };
return funcs;
}
var funcs = constfuncs();
alert(funcs[1]());
alert(funcs[3]());
alert(funcs[9]());
alert(funcs[5]());
*/
    // function properties method construct
    // This function uses arguments.callee, so it won't work in strict mode.
/*
function check(args) {
var actual = args.length;
// The actual number of arguments
var expected = args.callee.length; // The expected number of arguments
console.log("actual" +actual);
console.log("expected" +expected);
if (actual !== expected)
// Throw an exception if they differ.
throw Error("Expected " + expected + "args; got " + actual);
}
function f(x, y, z) {
check(arguments);
return x + y + z;

}
f(1)
*/
    //Higher order function 
    function not(f) {
        return function() {// Return a new function
		var result = f.apply(this, arguments); // that calls f
		return !result;// and negates its result.
	};
    }
	var even = function(x) { // A function to determine if a number is even
		return x % 2 === 0;
	};
    var odd = not(even);
    alert([1,1,3,5,5].every(odd));
    function compose(f,g) {
        return function() {
            // We use call for f because we're passing a single value and
            // apply for g because we're passing an array of values.
            return f.call(this, g.apply(this, arguments));
        };
    }
    var square = function(x) { return x*x; };
    var sum = function(x,y) { 
	var tmp = arguments[0]
	return x + y;
    };
    var squareofsum = compose(square, sum);
    alert(squareofsum(2,3,5));

});

/*
 side effects

 */





