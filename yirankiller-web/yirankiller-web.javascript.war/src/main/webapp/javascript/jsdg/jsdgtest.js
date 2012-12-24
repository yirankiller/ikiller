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
    //Higher order function  8.8.2
    /*
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
            alert(Array.prototype.join.call(arguments,","));
            return f.call(this, g.apply(this, arguments));
        };
    }
    var square = function(x) {
        return x*x;
    };
    var sum = function(x,y) { 
	var tmp = arguments[0]
	return x + y;
    };
    var squareofsum = compose(square, sum);
    alert(squareofsum(2,3,5));
    */
    /**************/  // 8.8.4
    // Return a memoized version of f.
// It only works if arguments to f all have distinct string representations.

/**
* memory 
*/
/*
    function memoize(f) {
        var cache = {}; // Value cache stored in the closure.
        return function() {
            // Create a string version of the arguments to use as a cache key.
            var key = arguments.length + Array.prototype.join.call(arguments,",");
            if (key in cache) return cache[key];
            else {
                alert("compute");
                return cache[key] = f.apply(this, arguments);
            }
        }
    }
    function plus(one ,two){
        return one+two;
    }
    var p = memoize(plus);
    alert(p(3,2));
    alert(p(3,2));
*/
    /*
	// range.js: A class representing a range of values.
	// This is a factory function that returns a new range object.
	function range(from, to) {
		// Use the inherit() function to create an object that inherits from the
		// prototype object defined below. The prototype object is stored as
		// a property of this function, and defines the shared methods (behavior)
		// for all range objects.
		var r = inherit(range.methods);
		// Store the start and end points (state) of this new range object.
		// These are noninherited properties that are unique to this object.
		r.from = from;
		r.to = to;
		// Finally return the new object
		return r;
	}
	
	// This prototype object defines methods inherited by all range objects.
	range.methods = {
		// Return true if x is in the range, false otherwise
		// This method works for textual and Date ranges as well as numeric.
		includes: function(x) { return this.from <= x && x <= this.to; },
		// Invoke f once for each integer in the range.
		// This method works only for numeric ranges.
		foreach: function(f) {
			for(var x = Math.ceil(this.from); x <= this.to; x++){ 
				console.log(x);
			}
		},
		// Return a string representation of the range
		toString: function() { return "(" + this.from + "..." + this.to + ")"; }

	};
	// Here are example uses
	var r = range(1,3);
	r.includes(2);
	r.foreach(console.log);
	//console.log(r);



    // range2.js: Another class representing a range of values.
    // This is a constructor function that initializes new Range objects.
    // Note that it does not create or return the object. It just initializes this.

    function Range(from, to) {
    // Store the start and end points (state) of this new range object.
    // These are noninherited properties that are unique to this object.
        this.from = from;
        this.to = to;
    }
    // All Range objects inherit from this object.
    // Note that the property name must be "prototype" for this to work.
    Range.prototype = {
    // Return true if x is in the range, false otherwise
    // This method works for textual and Date ranges as well as numeric.
        includes: function(x) { return this.from <= x && x <= this.to; },
    // Invoke f once for each integer in the range.
    // This method works only for numeric ranges.
        foreach: function(f) {
            for(var x = Math.ceil(this.from); x <= this.to; x++) console.log(x);
        },
    // Return a string representation of the range
        toString: function() { return "(" + this.from + "..." + this.to + ")"; }
    };
    // Here are example uses of a range object
    var r = new Range(1,3);
    // Create a range object
    r.includes(2);
    // => true: 2 is in the range
    r.foreach(console.log);
    // Prints 1 2 3
    console.log(r);
    // Prints (1...3)
    */








    /*
    var extend = (function() { // Assign the return value of this function
// First check for the presence of the bug before patching it.
        for(var p in {toString:null}) {
// If we get here, then the for/in loop works correctly and we return
// a simple version of the extend() function
            return function extend(o) {
                for(var i = 1; i < arguments.length; i++) {
                    var source = arguments[i];
                    for(var prop in source) o[prop] = source[prop];
                }
                return o;
            };
        }
    });
    */

    /*
    function extend(o, p) {
        for(prop in p) {
// For all props in p.
            o[prop] = p[prop];
// Add the property to o.
        }
        return o;
    }






    // A simple function for defining simple classes
    function defineClass(constructor, // A function that sets instance properties
                         methods,
                         statics)
    {
        // Instance methods: copied to prototype
        // Class properties: copied to constructor
        if (methods) extend(constructor.prototype, methods);
        if (statics) extend(constructor, statics);
        return constructor;
    }


// This is a simple variant of our Range class
    var SimpleRange =
        defineClass(function(f,t) { this.f = f; this.t = t; capto = function(){return "some"}},
            {
                includes: function(x) { return this.f <= x && x <= this.t;},
                toString: function() { return this.f + "..." + this.t; }
            },
            { upto: function(t) { return new SimpleRange(0, t); } });

    SimpleRange.lowerto = function(){
        return 1;
    }

    var sr = new SimpleRange();

    */

    /*
    function People(){
        this.name = "vow";
        People.prototype.eat = function(){
            return "Im eating.";
        }

        var walk = function (){
            return "Im walking";
        }
    }
    People.run = function(){
        return "Im runing";
    }

    var people = new People();


    // This constructor has no name
    var Complex = function(x,y) { this.r = x; this.i = y; }
// This constructor does have a name
    var Range = function Range3(f,t) { this.from = f; this.to = t; }

    */
    function A(){
        this.a = 2;
    }
    function B(){
        this.b=1;
    }
    B.prototype = inherit(A.prototype);

	/*
 * This function returns a subclass of specified Set class and overrides 
 * the add() method of that class to apply the specified filter.
 */
function filteredSetSubclass(superclass, filter) {
    var constructor = function() {          // The subclass constructor
        superclass.apply(this, arguments);  // Chains to the superclass
    };
    var proto = constructor.prototype = inherit(superclass.prototype);
    proto.constructor = constructor;
    proto.add = function() {
        // Apply the filter to all arguments before adding any
        for(var i = 0; i < arguments.length; i++) {
            var v = arguments[i];
            if (!filter(v)) throw("value " + v + " rejected by filter");
        }
        // Chain to our superclass add implementation
        superclass.prototype.add.apply(this, arguments);
    };
    return constructor;
}

function Set() {          // This is the constructor
    this.values = {};     // The properties of this object hold the set
    this.n = 0;           // How many values are in the set
    this.add.apply(this, arguments);  // All arguments are values to add
}

// Add each of the arguments to the set.
Set.prototype.add = function() {
    for(var i = 0; i < arguments.length; i++) {  // For each argument
        var val = arguments[i];                  // The value to add to the set
        var str = Set._v2s(val);                 // Transform it to a string
        if (!this.values.hasOwnProperty(str)) {  // If not already in the set
            this.values[str] = val;              // Map string to value
            this.n++;                            // Increase set size
        }
    }
    return this;                                 // Support chained method calls
};


// Define a set class that holds strings only
var StringSet = filteredSetSubclass(Set,function(x) {return typeof x==="string";});




});

/*
 side effects

 */





