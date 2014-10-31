/*!
 * User: easliu
 * Date: 8/10/12
 * Version: 1.0
 */
seajs.config({
    vars : {
        'jqueryV' : '1.11.1',
        'bootstrapV' : '3.2.0',
        'galleriaV' : '1.3.6',
        'bootstrapValidatorV' : '0.5.2'
    },

    paths : {
        'seaHome' : '/js/seajs/latest',
        'bootstrapHome' : '/bootstrap/{bootstrapV}',
        'jQueryHome' : '/js/jquery/{jqueryV}',
        'galleriaHome' : '/js/galleria/{galleriaV}',
        'bootstrapValidatorHome' : '/js/bootstrapValidator/{bootstrapValidatorV}'
    },

    alias : {
        'jQuery' : 'jQueryHome/jquery',
        'bootstrap' : 'bootstrapHome/js/bootstrap',
        'seajs-text' : 'seaHome/seajs-text',
        'galleria' : 'galleriaHome/galleria',
        'igalleria' : 'galleria/igalleria',
        'galleria.classic' : 'galleriaHome/galleria.classic',
        'bootstrapValidator' : 'bootstrapValidatorHome/js/bootstrapValidator'
    },

    preload : [
        'jQuery',
        //'bootstrapHome/doc/docs.css',
        'seajs-text'
    ],

    map : [
        ['/igalleria.js' ,'/igalleria.enc.js'],
        ['/galleria.js' , '/galleria.min.js'],
        ['/galleria.classic.js' , '/galleria.classic.min.js'],
//        ['/bootstrap.js' , '/bootstrap.min.js'],
        ['/jquery.js' ,'/jquery.min.js']
//        ['/bootstrap.css','/bootstrap.min.css']
    ],

    debug : true
});