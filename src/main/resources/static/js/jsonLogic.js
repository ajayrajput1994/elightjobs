function createGetRequest(formID,url,callback){
    var formData = $("#" + formID).serializeArray(); 
    $.ajax({
        method :'GET',
        url : url,
        dataType : 'json',
        data : $.param(formData),
        success : function(obj) { 
            console.log(obj);
            if(callback){
                var callbackMethod = eval(callback);
			    callbackMethod(obj, formID);
            }
        }
    });
}
function createPostRequest(formID,url,callback){
    var formData = $("#" + formID).serializeArray(); 
    $.ajax({
        method :'POST',
        url : url,
        dataType : 'json',
        data : $.param(formData),
        success : function(obj) { 
            console.log(obj);
            if(callback){
                var callbackMethod = eval(callback);
			    callbackMethod(obj, formID);
            }
        }
    });
}