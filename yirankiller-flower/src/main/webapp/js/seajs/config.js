/*!
 * User: easliu
 * Date: 8/10/12
 * Version: 1.0
 */
seajs.config({
    vars : {
        'jqueryV' : '1.11.1',
        'bootstrapV' : '3.0.3'
    },

    paths : {
        'seaHome' : '/js/seajs/latest'
        , 'bootstrapHome' : '/bootstrap/{bootstrapV}'
        , 'jQueryHome' : '/js/jquery/{jqueryV}'
    },

    alias : {
        'jQuery' : 'jQueryHome/jquery',
        'bootstrap' : 'bootstrapHome/js/bootstrap',
        'seajs-text' : 'seaHome/seajs-text'
    },

    preload : [
        'jQuery',
        //'bootstrapHome/doc/docs.css',
        'seajs-text'
    ],

    map : [
//        ['bootstrap.js' , 'bootstrap.min.js'],
//        ['jquery.js' ,'jquery.min.js'],
//        ['bootstrap.css','bootstrap.min.css']
    ],

    debug : true
});