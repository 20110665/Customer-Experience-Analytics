<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<body>
	<div id="wraper">
		<div class="tabel-call-history">
			<table>
				<tr>
					<td>ID</td>
					<td>${callDetail.id }</td>
				</tr>
				<tr>
					<td>Call ID</td>
					<td>${callDetail.call.id }</td>
				</tr>
				<tr>
					<td>Type Call</td>
					<td>${callDetail.typeCall }</td>
				</tr>
				<tr>
					<td>Time On Queue</td>
					<td>${callDetail.timeOnQueue }</td>
				</tr>
				<tr>
					<td>Time abandoned</td>
					<td>${callDetail.timeAbandoned }</td>
				</tr>
				<tr>
					<td>Wait Time</td>
					<td>${callDetail.waitTime }</td>
				</tr>
				<tr>
					<td>Call Content</td>
					<td><audio controls>
							<source src="${callDetail.callContent }" type="audio/mpeg">
							Your browser does not support the audio element.
						</audio></td>
				</tr>
				<tr>
					<td>Feed Back</td>
					<td>${callDetail.call.feedBackDetail.feedBackContent }</td>

				</tr>
			</table>
		</div>
	</div>
	<div class="ChartLive2">
								<canvas id="myChart" width="850" height="240"></canvas>
							</div>
							<script>
							
							var labels = ${labels};
						  	var values = ${values};	
							
                const ctx = document.getElementById('myChart').getContext('2d');
                const myChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        /* labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'], */
                        labels : labels,
                        datasets: [{
                            label: 'Service Level',
                            /* data: [12, 19, 3,12, 19, 3,12, 19, 3,12, 19, 3], */
                            data : values,
                            backgroundColor : [ 'rgba(255, 99, 132, 0.6)',
    							'rgba(54, 162, 235, 0.6)',
    							'rgba(255, 206, 70, 0.6)',
    							'rgba(75, 192, 192, 0.6)',
    							'rgba(100, 99, 50, 0.6)',
    							'rgba(20, 40, 150, 0.6)',
    							'rgba(255, 1, 150, 0.6)',
    							'rgba(1, 192, 100, 0.6)',
    							'rgba(2, 50, 230, 0.6)',
    							'rgba(54, 231, 132, 0.6)',
    							'rgba(123, 54, 6, 0.6)',
    							'rgba(34, 156, 79, 0.6)'],
                            borderColor: '#777',
                            borderWidth: 2,
                            hoverBorderColor : '#000'
                        }]
                    },
                });
                </script>
</body>

