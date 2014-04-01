/**
 * User: easliu
 * Date: 3/26/13
 * Version: 1.0
 */


function reload(){
    $('#courses_wrap').before("<div id='insert_helper'></div>");
    $("#insert_helper").append("<div id='main_container' style='padding-left: 10px; width: 550px;'/>");
    $("#main_container").append("<div><textarea rows='4' cols='55' id='import_content'/><input type='button' name='import' id='import' value='Import' style='float: right;'></div>");
    $('#import').click(function(){
        console.log($('#import_content').val());
        var arr = $($.csv.toArrays($('#import_content').val()));
        arr.each(function(index,ele){
            index++;
            console.log(index +" , "+ele[0]+ " , "+ele[1]);
            if($($('.C_credit').get(index)).length == 0){
                GPA.inputui.addRow();
            }
            $($('.C_credit').get(index)).val(ele[0]);
            $($('.C_grade').get(index)).val(ele[1]).triggerHandler("focusout");
            $($('#courses_table tbody [type=checkbox]').get(index)).prop('checked',true);
        });
    })
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
    var script1=document.createElement('script');\r\nscript1.src='https://jquery-csv.googlecode.com/files/jquery.csv-0.71.min.js';\r\n\
        script1.type='text/javascript';\r\n\
        document.head.appendChild(script1);\r\n\
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
