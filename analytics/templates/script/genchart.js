/**
 * Created by root on 29/10/14.
 */
$(document).ready(function(){
    $.ajax({
        type:"GET",
        url:"/analytics/api/candidate/?format=json",
        dataType: 'json',
        success:function(response)
        {
           /*alert(response)*/
           /*alert("hi")*/
           tabledetails=""
           var male=0
           var female=0
           for(i=0;i<response.objects.length;i++)
            {
                        var cand_gender=response.objects[i].cand_gender;
                        if (cand_gender=='M')
                        {
                        male=male+1
                        }
                        else
                        {
                            female=female+1
                        }

                        /*tabledetails+="<tr><td>"+cand_email+"</td></tr>"*/
            }
            //show_in_table(tabledetails)

            var data =[male,female]

            var r =300

            var color=d3.scale.ordinal()
                .range(["red","orange"]);

            var canvas =d3.select("body").append("svg")
                .attr("width",1500)
                .attr("height",1500)
            var group =canvas.append("g")
                .attr("transform","translate(300,300)");
            var arc =d3.svg.arc()
                .innerRadius(0)
                .outerRadius(r);
            var pie=d3.layout.pie()
                .value(function(d){return d;});
            var arcs =group.selectAll(".arc")
                .data(pie(data))
                .enter()
                .append("g")
                .attr("class","arc")

            arcs.append("path")
                .attr("d",arc)
                .attr("fill",function(d){return color(d.data);});
            arcs.append("text")
                .attr("transform",function(d){return "translate("+arc.centroid(d)+")";})
                .attr("font-anchor","middle")
                .attr("font-size","1.5em")
                .text(function(d){return d.data;});
               }
    });
    function show_in_table(tabledetails)
{

            var tbody = document.getElementById('data')
            var temp = tbody.ownerDocument.createElement('div');
            temp.innerHTML = '<table>' + tabledetails + '</table>';
            tbody.parentNode.replaceChild(temp.firstChild.firstChild, tbody);
}

});
