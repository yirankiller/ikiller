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
    */
    logger.evalLog("/\d+/g.toString()");

    logger.evalLog("new Date(2010,0,1).toString()");
});






