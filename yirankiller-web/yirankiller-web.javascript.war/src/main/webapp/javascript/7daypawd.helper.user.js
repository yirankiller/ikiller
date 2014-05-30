/**
 * User: easliu
 * Date: 3/26/13
 * Version: 1.0
 */


function reload(){
    var ssnArr = ['5003072260','7607119349'];
    if(window.location.pathname == "/mina-sidor/mina-sidor.htm"){
        $("#ssn").parent().append("<span id='changessn'>Change</span>");
        $("#password").val("123qwe");
        $("#ssn").val("5003072260");
    }
    $("#changessn").click(function(){
        $.each(ssnArr,function(ind,val){
            if(val == $("#ssn").val()){
                ind++;
                $("#ssn").val(ssnArr[ (ind >= ssnArr.length ? 0:ind)]);     
                return false;
            }
        });
    });
}




function unsafeInvoke(callback) {
    var cb = document.createElement("script");
    cb.type = "text/javascript";
    cb.textContent = buildCallback(callback);
    document.head.appendChild(cb);
}

function buildCallback(callback) {
    var content = "";
    content += "window.__cb=" + buildObjectJavascriptCode(callback) + ";\r\n\
    if(typeof(jQuery)!='undefined')window.__cb();\r\n\
    else{\
        var script=document.createElement('script');\r\nscript.src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js';\r\n\
        script.type='text/javascript';\r\n\
        script.addEventListener('load', window.__cb);\r\n\
        document.head.appendChild(script);\r\n\
    }";
    return content;
}

function buildObjectJavascriptCode(object) {
    if (!object) return null;
    var t = typeof (object);
    if (t == "string") {
        return "\"" + object.replace(/(\r|\n|\\)/gi, function (a, b) {
            switch (b) {
                case "\r":
                    return "\\r";
                case "\n":
                    return "\\n";
                case "\\":
                    return "\\\\";
            }
        }) + "\"";
    }
    if (t != "object") return object + "";

    var code = [];
    for (var i in object) {
        var obj = object[i];
        var objType = typeof (obj);

        if ((objType == "object" || objType == "string") && obj) {
            code.push(i + ":" + buildObjectJavascriptCode(obj));
        } else {
            code.push(i + ":" + obj);
        }
    }

    return "{" + code.join(",") + "}";
}

unsafeInvoke(reload);
