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
});


/*
 side effects

 */





