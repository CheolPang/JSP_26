<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>49_openApi</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>

	<h1>Weekly Box Office</h1>
	<table border="1">
		<thead>
			<tr>
				<td>박스오피스 순위</td>
				<td>영화 포스터</td>
				<td>영화명</td>
				<td>개봉일</td>
				<td>어제까지 누적관객수</td>
				<td>어제까지 누적매출액</td>
			</tr>
		</thead>
		<tbody class="table_body">
			<script>
				$(function(){
					$(window).load(function(){
						getJSON();
					})
					
					var urlValue = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=7f15d8077a11311704a6b9142f74f4e8&targetDt="
					
					var date = new Date()
					
					var year = date.getFullYear()
					var month = date.getMonth() + 1
					var date = date.getDate() - 1
					
					if (month < 10) {
						month = "0"+month
					}
					if (date < 10) {
						date = "0"+date
					}
					
					var dateR = year+month+date
					

					urlValue = urlValue+dateR
					
					
					function getJSON(){
						$.ajax({
							type: "GET",
							url: urlValue,
							dataType: "json",
							success: function(data){
								alert("통신성공");
								var list = data.boxOfficeResult.dailyBoxOfficeList
								//alert(list[0].movieNm);
								var str = '<tr>';
								$.each(list, function(i){
									str+='<td>'+list[i].rank+'</td>' + 
										 '<td><img src="images/'+list[i].rank+'.jpg"></td>' + 
										 '<td>'+list[i].movieNm+'</td>' + 
										 '<td>'+list[i].openDt+'</td>' + 
										 '<td>'+priceToString(list[i].audiAcc)+'명</td>' + 
										 '<td>'+priceToString(list[i].salesAcc)+'원</td>' ;
									str += '</tr>';
									
								});
								$('.table_body').append(str);
							},
							error: function(){
								alert("통신에러");
							}
						})
					}
					function priceToString(price){
						return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					}
				})
			</script>
		</tbody>
	</table>

</body>
</html>