/**
 * Created by root on 29/10/14.
 */
$(document).ready(function(){
    $.ajax({
        type:"GET",
        url:"/analytics/api/candidate/?format=json",
        success:function(response)
        {
            alert(response)
        }
    });
});