/**
 * User: easliu
 * Date: 3/26/13
 * Version: 1.0
 */


function init(){
    if(window.location.href == 'http://detail.tmall.com/item.htm?spm=a1z10.1.w18226619801.1.SKa2ts&id=18708908702'){
        alert(1);
        setTimeout(function(){
            alert(2);
            $("#J_LinkBuy").trigger("click");
        }, 5000);
    }

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

unsafeInvoke(init);
