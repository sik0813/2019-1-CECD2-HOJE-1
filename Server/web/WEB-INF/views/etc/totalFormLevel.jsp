<%--
  Created by IntelliJ IDEA.
  User: GIGABYTE
  Date: 2019-07-19
  Time: 오후 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <title>Title</title>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

    <script type="text/javascript">

        window.onload = function() {
            var dps = [[]];
            var chart = new CanvasJS.Chart("chartContainer", {
                theme: "light2", // "light1", "dark1", "dark2"
                exportEnabled: true,
                animationEnabled: true,
                title: {
                    text: "Test Com.Fasoo.Chart"
                },
                data: [{
                    type: "pie",
                    showInLegend: "true",
                    legendText: "{label}",
                    click: onClick,
                    yValueFormatString: "#,###.##",
                    indexLabelFontSize: 16,
                    indexLabel: "{label} - {y}",
                    dataPoints: dps[0]
                }]
            });

            var yValue;
            var label;

            <c:forEach items="${dataPointsList}" var="dataPoints" varStatus="loop">
                <c:forEach items="${dataPoints}" var="dataPoint">
                    yValue = parseFloat("${dataPoint.y}");
                    label = "${dataPoint.label}";
                    dps[parseInt("${loop.index}")].push({
                        label : label,
                        y : yValue,
                    });
                </c:forEach>
            </c:forEach>

            chart.render();

            function onClick(e){
                alert(e.dataPoint.label);
            }
        }
    </script>
</head>

<body>
    <div id="chartContainer" style="height: 370px; width: 100%;"></div>
</body>

</html>