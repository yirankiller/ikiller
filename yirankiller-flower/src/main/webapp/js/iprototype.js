/**
 * Created by eason on 14-7-7.
 */
String.prototype.endWith=function(str){
  if(str==null||str==""||this.length==0||str.length>this.length)
    return false;
  if(this.substring(this.length-str.length)==str)
    return true;
  else
    return false;
  return true;
}
String.prototype.startWith=function(str){
  if(str==null||str==""||this.length==0||str.length>this.length)
    return false;
  if(this.substr(0,str.length)==str)
    return true;
  else
    return false;
  return true;
}
String.prototype.contains = function (substr,isIgnoreCase){
  val = this.toString();
  if(isIgnoreCase){
    val=val.toLowerCase();
    substr=substr.toLowerCase();
  }
  var startChar=substr.substring(0,1);
  var strLen=substr.length;
  for(var j=0;j<val.length-strLen+1;j++)
  {
    if(val.charAt(j)==startChar)//
    {
      if(val.substring(j,j+strLen)==substr)//
      {
        return true;
      }
    }
  }
  return false;
}