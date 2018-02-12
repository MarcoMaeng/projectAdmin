<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<!-- NProgress -->
<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link
	href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">
<link rel="icon" href="images/favicon.ico" type="image/ico" />
<title>㈜산책 매출관리</title>
<script type="text/javascript">
	$(function() {
		$("#day2,#day3").hide();
		$("table:eq(1), table:eq(2)").attr("id","");
		$("#listSize").change(function() {
			if ($(this).val() == 1) {
				$("#day2,#day3").hide();
				$("table:eq(1), table:eq(2)").attr("id","");
				$("#day1").show();
				$("table:eq(0)").attr("id","datatable");
			} else if ($(this).val() == 2) {
				$("#day1,#day3").hide();
				$("table:eq(0), table:eq(2)").attr("id","");
				$("#day2").show();
				$("table:eq(1)").attr("id","datatable");
			} else if ($(this).val() == 3) {
				$("#day1,#day2").hide();
				$("table:eq(0), table:eq(1)").attr("id","");
				$("#day3").show();
				$("table:eq(2)").attr("id","datatable");
			}

		});
	});
</script>
</head>
<div class="container body">
	<div class="main_container">
		<div class="right_col" role="main">
			<div class="">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>매출관리</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Settings 1</a></li>
											<li><a href="#">Settings 2</a></li>
										</ul></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div>
								<select id="listSize" name="datatable_length"
									aria-controls="datatable" class="form-control input-sm">
									<option value="1" selected="selected">일별</option>
									<option value="2">월별</option>
									<option value="3">연별</option>
								</select>
							</div>
							
							<!-- 일별========================================================== -->
							<div class="x_content" id="day1">
								<table id="datatable" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>기간</th>
											<th>주문횟수</th>
											<th>종합가격</th>
											<th>현금가격</th>
											<th>포인트</th>
										</tr>
									</thead>
									<tbody>
										<!-- 						for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
										<c:forEach var="i" begin="1" end="10">
											<tr role="row" class="odd">
												<c:if test="${i==10 }">
													<td class="sorting_1">2018.01.${i}</td>
												</c:if>
												<c:if test="${i!=10 }">
													<td class="sorting_1">2018.01.0${i}</td>
												</c:if>
												<td><a href="#">1</a></td>
												<td><fmt:formatNumber value="${i*1000 + 10000 }"
														pattern="0,000" /></td>
												<td><fmt:formatNumber
														value="${(i*1000 + 10000)-(i*1000 + 10000)/10}"
														pattern="0,000" /></td>
												<td><fmt:formatNumber value="${(i*1000 + 10000)/10 }"
														pattern="0,000" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- 차트부분 -->
								<div id="mainb" style="height: 350px;"></div>
							</div>
							
<!-- 							월별========================================================== -->
<!-- 							<div class="x_content" id="day2"> -->
<!-- 								<table id="" class="table table-striped table-bordered"> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th>기간</th> -->
<!-- 											<th>주문횟수</th> -->
<!-- 											<th>종합가격</th> -->
<!-- 											<th>현금가격</th> -->
<!-- 											<th>포인트</th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody> -->
<!-- 										for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
<%-- 										<c:forEach var="i" begin="1" end="10"> --%>
<!-- 											<tr role="row" class="odd"> -->
<%-- 												<td class="sorting_1">2017.${i+2 }</td> --%>

<%-- 												<td><a href="#">${i+90 }</a></td> --%>
<%-- 												<td><fmt:formatNumber value="${i*100000 + 1000000 }" --%>
<%-- 														pattern="0,000" /></td> --%>
<%-- 												<td><fmt:formatNumber --%>
<%-- 														value="${(i*100000 + 1000000)-(i*100000 + 1000000)/10}" --%>
<%-- 														pattern="0,000" /></td> --%>
<%-- 												<td><fmt:formatNumber --%>
<%-- 														value="${(i*100000 + 1000000)/10 }" pattern="0,000" /></td> --%>
<!-- 											</tr> -->

<%-- 										</c:forEach> --%>
<!-- 									</tbody> -->
<!-- 								</table> -->
<!-- 								차트부분 -->
<!-- 								<div id="mainb1" style="height: 350px;"></div> -->
<!-- 							</div> -->
							
<!-- 							연별============================================================== -->
<!-- 							<div class="x_content" id="day3"> -->
<!-- 								<table id="" class="table table-striped table-bordered"> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th>기간</th> -->
<!-- 											<th>주문횟수</th> -->
<!-- 											<th>종합가격</th> -->
<!-- 											<th>현금가격</th> -->
<!-- 											<th>포인트</th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody> -->
<!-- 										for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
<%-- 										<c:forEach var="i" begin="1" end="5"> --%>
<!-- 											<tr role="row" class="odd"> -->
<%-- 												<td class="sorting_1">201${i+2}</td> --%>
<%-- 												<td><a href="#">${7000 + i*126 }</a></td> --%>
<%-- 												<td><fmt:formatNumber value="${i*1000000 + 10000000 }" --%>
<%-- 														pattern="0,000" /></td> --%>
<%-- 												<td><fmt:formatNumber --%>
<%-- 														value="${(i*1000000 + 10000000)-(i*1000000 + 10000000)/10}" --%>
<%-- 														pattern="0,000" /></td> --%>
<%-- 												<td><fmt:formatNumber --%>
<%-- 														value="${(i*1000000 + 10000000)/10 }" pattern="0,000" /></td> --%>
<!-- 											</tr> -->

<%-- 										</c:forEach> --%>
<!-- 									</tbody> -->
<!-- 								</table> -->
<!-- 								차트부분 -->
<!-- 								<div id="mainb2" style="height: 350px;"></div> -->
<!-- 							</div> -->
						</div>
					</div>

					<!-- 				테이블 승찬이꺼 -->
					<!-- 					<div class="col-md-8 col-sm-8 col-xs-12 box_jm"> -->
					<!-- 						<div class="x_panel"> -->
					<!-- 							<div class="x_title"> -->
					<!-- 								<h2>매출관리</h2> -->
					<!-- 								<ul class="nav navbar-right panel_toolbox"> -->
					<!-- 									<li><a class="collapse-link"> <i -->
					<!-- 											class="fa fa-chevron-up"></i> -->
					<!-- 									</a></li> -->
					<!-- 									<li class="dropdown"><a href="#" class="dropdown-toggle" -->
					<!-- 										data-toggle="dropdown" role="button" aria-expanded="false"> -->
					<!-- 											<i class="fa fa-wrench"></i> -->
					<!-- 									</a> -->
					<!-- 										<ul class="dropdown-menu" role="menu"> -->
					<!-- 											<li><a href="#">Settings 1</a></li> -->
					<!-- 											<li><a href="#">Settings 2</a></li> -->
					<!-- 										</ul></li> -->
					<!-- 									<li><a class="close-link"> <i class="fa fa-close"></i> -->
					<!-- 									</a></li> -->
					<!-- 								</ul> -->
					<!-- 								<div class="clearfix"></div> -->
					<!-- 							</div> -->
					<!-- 							<div class="x_content"> -->
					<!-- 								<div id="datatable_wrapper" -->
					<!-- 									class="dataTables_wrapper form-inline dt-bootstrap no-footer"> -->
					<!-- 									<div class="row"> -->
					<!-- 										<div class="col-sm-6"> -->
					<!-- 											<div class="dataTables_length filter_area_left_jm" -->
					<!-- 												id="datatable_length"> -->
					<!-- 												<div> -->
					<!-- 													<label>기간별조회 </label> -->
					<!-- 												</div> -->
					<!-- 												<div> -->
					<!-- 													<select id="listSize" name="datatable_length" -->
					<!-- 														aria-controls="datatable" class="form-control input-sm"> -->
					<!-- 														<option value="1" selected="selected">일별</option> -->
					<!-- 														<option value="2">월별</option> -->
					<!-- 														<option value="3">연별</option> -->
					<!-- 													</select> -->
					<!-- 												</div> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									<div class="row" id="day1"> -->
					<!-- 										<div class="col-sm-12"> -->
					<!-- 											<table id="datatable" -->
					<!-- 												class="table table-striped table-bordered dataTable no-footer" -->
					<!-- 												role="grid" aria-describedby="datatable_info"> -->
					<!-- 												<thead> -->
					<!-- 													<tr role="row"> -->
					<!-- 														<th class="sorting_asc" tabindex="0" -->
					<!-- 															aria-controls="datatable" rowspan="1" colspan="1" -->
					<!-- 															aria-sort="ascending" -->
					<!-- 															aria-label="Name: activate to sort column descending" -->
					<!-- 															style="width: 226px;">기간</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Position: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">주문횟수</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Office: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">종합가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Age: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">현금가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Start date: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">포인트</th> -->
					<!-- 													</tr> -->
					<!-- 												</thead> -->
					<!-- 												<tbody> -->
					<!-- <!-- 													for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
					<%-- 													<c:forEach var="i" begin="1" end="10"> --%>
					<!-- 														<tr role="row" class="odd"> -->
					<%-- 															<c:if test="${i==10 }"> --%>
					<%-- 																<td class="sorting_1">2018.01.${i}</td> --%>
					<%-- 															</c:if> --%>
					<%-- 															<c:if test="${i!=10 }"> --%>
					<%-- 																<td class="sorting_1">2018.01.0${i}</td> --%>
					<%-- 															</c:if> --%>
					<!-- 															<td><a href="#">1</a></td> -->
					<%-- 															<td><fmt:formatNumber value="${i*1000 + 10000 }" --%>
					<%--  																	pattern="0,000" /></td> --%>
					<%--  															<td><fmt:formatNumber  --%>
					<%--  																	value="${(i*1000 + 10000)-(i*1000 + 10000)/10}"  --%>
					<%--  																	pattern="0,000" /></td>  --%>
					<%--  															<td><fmt:formatNumber --%>
					<%--  																	value="${(i*1000 + 10000)/10 }" pattern="0,000" /></td>  --%>
					<!-- 														</tr> -->

					<%-- 													</c:forEach> --%>
					<!-- 												</tbody> -->
					<!-- 											</table> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									<div class="row" id="day1"> -->
					<!-- 										<div class="col-sm-5"> -->
					<!-- 											<div class="dataTables_info" id="datatable_info" -->
					<!-- 												role="status" aria-live="polite"></div> -->
					<!-- 										</div> -->
					<!-- 										<div class="col-sm-7"> -->
					<!-- 											<div class="dataTables_paginate paging_simple_numbers" -->
					<!-- 												id="datatable_paginate"> -->
					<!-- 												<ul class="pagination"> -->
					<!-- 													<li class="paginate_button previous disabled" -->
					<!-- 														id="datatable_previous"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="0" tabindex="0">이전</a></li> -->

					<!-- 													for문 (이전, 다음은 제외) -->
					<!-- 													<li class="paginate_button active"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="2" tabindex="0">2</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="3" tabindex="0">3</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="4" tabindex="0">4</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="5" tabindex="0">5</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="6" tabindex="0">6</a></li> -->

					<!-- 													<li class="paginate_button next" id="datatable_next"><a -->
					<!-- 														href="#" aria-controls="datatable" data-dt-idx="7" -->
					<!-- 														tabindex="0">다음</a></li> -->
					<!-- 												</ul> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									차트부분 -->
					<!-- 									<div id="mainb" style="height: 350px;"></div> -->
					<!-- 																		</div> -->
					<!-- 																	</div> -->


					<!-- 									월별 ------------------------------------------------------------------------------------ -->
					<!-- 									<div class="x_content">
<!-- 									<div id="datatable_wrapper" -->
					<!-- 										class="dataTables_wrapper form-inline dt-bootstrap no-footer"> -->
					<!-- 										 <div class="row"> -->
					<!-- 											<div class="col-sm-6"> -->
					<!-- 												<div class="dataTables_length filter_area_left_jm" id="datatable_length"> -->
					<!-- 													<div><label>기간별조회 </label></div> -->
					<!-- 													<div> -->
					<!-- 														<select id="listSize" name="datatable_length" aria-controls="datatable" class="form-control input-sm"> -->
					<!-- 															<option value="1" selected="selected">일별</option> -->
					<!-- 															<option value="2">월별</option> -->
					<!-- 															<option value="3">연별</option> -->
					<!-- 														</select> -->
					<!-- 													</div> -->
					<!-- 												</div> -->
					<!-- 											</div> -->
					<!-- 										</div>-->


					<!-- 									<div class="row" id="day2"> -->
					<!-- 										<div class="col-sm-12"> -->
					<!-- 											<table id="datatable" -->
					<!-- 												class="table table-striped table-bordered dataTable no-footer" -->
					<!-- 												role="grid" aria-describedby="datatable_info"> -->
					<!-- 												<thead> -->
					<!-- 													<tr role="row"> -->
					<!-- 														<th class="sorting_asc" tabindex="0" -->
					<!-- 															aria-controls="datatable" rowspan="1" colspan="1" -->
					<!-- 															aria-sort="ascending" -->
					<!-- 															aria-label="Name: activate to sort column descending" -->
					<!-- 															style="width: 226px;">기간</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Position: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">주문횟수</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Office: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">종합가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Age: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">현금가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Start date: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">포인트</th> -->
					<!-- 													</tr> -->
					<!-- 												</thead> -->
					<!-- 												<tbody> -->
					<!-- 													for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
					<%-- 													<c:forEach var="i" begin="1" end="10"> --%>
					<!-- 														<tr role="row" class="odd"> -->
					<%-- 															<td class="sorting_1">2017.${i+2 }</td> --%>

					<%-- 															<td><a href="#">${i+90 }</a></td> --%>
					<%-- 															<td><fmt:formatNumber value="${i*100000 + 1000000 }" --%>
					<%-- 																	pattern="0,000" /></td> --%>
					<%-- 															<td><fmt:formatNumber --%>
					<%-- 																	value="${(i*100000 + 1000000)-(i*100000 + 1000000)/10}" --%>
					<%-- 																	pattern="0,000" /></td> --%>
					<%-- 															<td><fmt:formatNumber --%>
					<%-- 																	value="${(i*100000 + 1000000)/10 }" pattern="0,000" /></td> --%>
					<!-- 														</tr> -->

					<%-- 													</c:forEach> --%>
					<!-- 												</tbody> -->
					<!-- 											</table> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									<div class="row" id="day2"> -->
					<!-- 										<div class="col-sm-5"> -->
					<!-- 											<div class="dataTables_info" id="datatable_info" -->
					<!-- 												role="status" aria-live="polite"></div> -->
					<!-- 										</div> -->
					<!-- 										<div class="col-sm-7"> -->
					<!-- 											<div class="dataTables_paginate paging_simple_numbers" -->
					<!-- 												id="datatable_paginate"> -->
					<!-- 												<ul class="pagination"> -->
					<!-- 													<li class="paginate_button previous disabled" -->
					<!-- 														id="datatable_previous"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="0" tabindex="0">이전</a></li> -->

					<!-- 													for문 (이전, 다음은 제외) -->
					<!-- 													<li class="paginate_button active"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="2" tabindex="0">2</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="3" tabindex="0">3</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="4" tabindex="0">4</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="5" tabindex="0">5</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="6" tabindex="0">6</a></li> -->

					<!-- 													<li class="paginate_button next" id="datatable_next"><a -->
					<!-- 														href="#" aria-controls="datatable" data-dt-idx="7" -->
					<!-- 														tabindex="0">다음</a></li> -->
					<!-- 												</ul> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									차트부분 -->
					<!-- 									<div id="mainb1" style="height: 350px;"></div> -->
					<!-- 																		</div> -->
					<!-- 																	</div> -->

					<!-- 									연별 ------------------------------------------------------------------------------------ -->
					<!-- 									<div class="x_content">
<!-- 									<div id="datatable_wrapper" -->
					<!-- 										class="dataTables_wrapper form-inline dt-bootstrap no-footer"> -->
					<!-- 										 <div class="row"> -->
					<!-- 											<div class="col-sm-6"> -->
					<!-- 												<div class="dataTables_length filter_area_left_jm" id="datatable_length"> -->
					<!-- 													<div><label>기간별조회 </label></div> -->
					<!-- 													<div> -->
					<!-- 														<select id="listSize" name="datatable_length" aria-controls="datatable" class="form-control input-sm"> -->
					<!-- 															<option value="1" selected="selected">일별</option> -->
					<!-- 															<option value="2">월별</option> -->
					<!-- 															<option value="3">연별</option> -->
					<!-- 														</select> -->
					<!-- 													</div> -->
					<!-- 												</div> -->
					<!-- 											</div> -->
					<!-- 										</div>-->

					<!-- 									<div class="row" id="day3"> -->
					<!-- 										<div class="col-sm-12"> -->
					<!-- 											<table id="datatable" -->
					<!-- 												class="table table-striped table-bordered dataTable no-footer" -->
					<!-- 												role="grid" aria-describedby="datatable_info"> -->
					<!-- 												<thead> -->
					<!-- 													<tr role="row"> -->
					<!-- 														<th class="sorting_asc" tabindex="0" -->
					<!-- 															aria-controls="datatable" rowspan="1" colspan="1" -->
					<!-- 															aria-sort="ascending" -->
					<!-- 															aria-label="Name: activate to sort column descending" -->
					<!-- 															style="width: 226px;">기간</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Position: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">주문횟수</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Office: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">종합가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Age: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">현금가격</th> -->

					<!-- 														<th class="sorting" tabindex="0" aria-controls="datatable" -->
					<!-- 															rowspan="1" colspan="1" -->
					<!-- 															aria-label="Start date: activate to sort column ascending" -->
					<!-- 															style="width: 224px;">포인트</th> -->
					<!-- 													</tr> -->
					<!-- 												</thead> -->
					<!-- 												<tbody> -->
					<!-- 													for문(홀수일경우 class안에 odd, 짝수일경우 class안에 even 나머지 동일) -->
					<%-- 													<c:forEach var="i" begin="1" end="5"> --%>
					<!-- 														<tr role="row" class="odd"> -->
					<%-- 															<td class="sorting_1">201${i+2}</td> --%>
					<%-- 															<td><a href="#">${7000 + i*126 }</a></td> --%>
					<%-- 															<td><fmt:formatNumber --%>
					<%-- 																	value="${i*1000000 + 10000000 }" pattern="0,000" /></td> --%>
					<%-- 															<td><fmt:formatNumber --%>
					<%-- 																	value="${(i*1000000 + 10000000)-(i*1000000 + 10000000)/10}" --%>
					<%-- 																	pattern="0,000" /></td> --%>
					<%-- 															<td><fmt:formatNumber --%>
					<%-- 																	value="${(i*1000000 + 10000000)/10 }" pattern="0,000" /></td> --%>
					<!-- 														</tr> -->

					<%-- 													</c:forEach> --%>
					<!-- 												</tbody> -->
					<!-- 											</table> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 									<div class="row" id="day3"> -->
					<!-- 										<div class="col-sm-5"> -->
					<!-- 											<div class="dataTables_info" id="datatable_info" -->
					<!-- 												role="status" aria-live="polite"></div> -->
					<!-- 										</div> -->
					<!-- 										<div class="col-sm-7"> -->
					<!-- 											<div class="dataTables_paginate paging_simple_numbers" -->
					<!-- 												id="datatable_paginate"> -->
					<!-- 												<ul class="pagination"> -->
					<!-- 													<li class="paginate_button previous disabled" -->
					<!-- 														id="datatable_previous"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="0" tabindex="0">이전</a></li> -->

					<!-- 													for문 (이전, 다음은 제외) -->
					<!-- 													<li class="paginate_button active"><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="2" tabindex="0">2</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="3" tabindex="0">3</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="4" tabindex="0">4</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="5" tabindex="0">5</a></li> -->
					<!-- 													<li class="paginate_button "><a href="#" -->
					<!-- 														aria-controls="datatable" data-dt-idx="6" tabindex="0">6</a></li> -->

					<!-- 													<li class="paginate_button next" id="datatable_next"><a -->
					<!-- 														href="#" aria-controls="datatable" data-dt-idx="7" -->
					<!-- 														tabindex="0">다음</a></li> -->
					<!-- 												</ul> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 								</div> -->
					<!-- 								차트부분 -->
					<!-- 								<div id="mainb2" style="height: 350px;"></div> -->
					<!-- 							</div> -->

					<!-- 						</div> -->
					<!-- 					</div> -->
					<!-- jQuery -->
				</div>
			</div>
		</div>
	</div>
</div>
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- NProgress -->
<script src="vendors/nprogress/nprogress.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- iCheck -->
<script src="vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="vendors/datatables.net/js/jquery.dataTables.js"></script>
<script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script
	src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script
	src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script
	src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script
	src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>

<!-- ECharts -->
<script src="vendors/echarts/dist/echarts.min.js"></script>
<script>
	var theme = {
		color : [ '#26B99A', '#34495E', '#7cbae2', '#3498DB', '#9B59B6',
				'#8abb6f', '#759c6a', '#bfd3b7' ],

		title : {
			itemGap : 8,
			textStyle : {
				fontWeight : 'normal',
				color : '#408829'
			}
		},

		dataRange : {
			color : [ '#1f610a', '#97b58d' ]
		},

		toolbox : {
			color : [ '#408829', '#408829', '#408829', '#408829' ]
		},

		tooltip : {
			backgroundColor : 'rgba(0,0,0,0.5)',
			axisPointer : {
				type : 'line',
				lineStyle : {
					color : '#408829',
					type : 'dashed'
				},
				crossStyle : {
					color : '#408829'
				},
				shadowStyle : {
					color : 'rgba(200,200,200,0.3)'
				}
			}
		},

		dataZoom : {
			dataBackgroundColor : '#eee',
			fillerColor : 'rgba(64,136,41,0.2)',
			handleColor : '#408829'
		},
		grid : {
			borderWidth : 0
		},

		categoryAxis : {
			axisLine : {
				lineStyle : {
					color : '#408829'
				}
			},
			splitLine : {
				lineStyle : {
					color : [ '#eee' ]
				}
			}
		},

		valueAxis : {
			axisLine : {
				lineStyle : {
					color : '#408829'
				}
			},
			splitArea : {
				show : true,
				areaStyle : {
					color : [ 'rgba(250,250,250,0.1)', 'rgba(200,200,200,0.1)' ]
				}
			},
			splitLine : {
				lineStyle : {
					color : [ '#eee' ]
				}
			}
		},
		timeline : {
			lineStyle : {
				color : '#408829'
			},
			controlStyle : {
				normal : {
					color : '#408829'
				},
				emphasis : {
					color : '#408829'
				}
			}
		},

		k : {
			itemStyle : {
				normal : {
					color : '#68a54a',
					color0 : '#a9cba2',
					lineStyle : {
						width : 1,
						color : '#408829',
						color0 : '#86b379'
					}
				}
			}
		},
		map : {
			itemStyle : {
				normal : {
					areaStyle : {
						color : '#ddd'
					},
					label : {
						textStyle : {
							color : '#c12e34'
						}
					}
				},
				emphasis : {
					areaStyle : {
						color : '#99d2dd'
					},
					label : {
						textStyle : {
							color : '#c12e34'
						}
					}
				}
			}
		},
		force : {
			itemStyle : {
				normal : {
					linkStyle : {
						strokeColor : '#408829'
					}
				}
			}
		},
		chord : {
			padding : 4,
			itemStyle : {
				normal : {
					lineStyle : {
						width : 1,
						color : 'rgba(128, 128, 128, 0.5)'
					},
					chordStyle : {
						lineStyle : {
							width : 1,
							color : 'rgba(128, 128, 128, 0.5)'
						}
					}
				},
				emphasis : {
					lineStyle : {
						width : 1,
						color : 'rgba(128, 128, 128, 0.5)'
					},
					chordStyle : {
						lineStyle : {
							width : 1,
							color : 'rgba(128, 128, 128, 0.5)'
						}
					}
				}
			}
		},
		gauge : {
			startAngle : 225,
			endAngle : -45,
			axisLine : {
				show : true,
				lineStyle : {
					color : [ [ 0.2, '#86b379' ], [ 0.8, '#68a54a' ],
							[ 1, '#408829' ] ],
					width : 8
				}
			},
			axisTick : {
				splitNumber : 10,
				length : 12,
				lineStyle : {
					color : 'auto'
				}
			},
			axisLabel : {
				textStyle : {
					color : 'auto'
				}
			},
			splitLine : {
				length : 18,
				lineStyle : {
					color : 'auto'
				}
			},
			pointer : {
				length : '90%',
				color : 'auto'
			},
			title : {
				textStyle : {
					color : '#333'
				}
			},
			detail : {
				textStyle : {
					color : 'auto'
				}
			}
		},
		textStyle : {
			fontFamily : 'Arial, Verdana, sans-serif'
		}
	};
	/*echartBar- 일별!!----------------------------------------------------------------------------------------*/
	var echartBar = echarts.init(document.getElementById('mainb'), theme);

	echartBar.setOption({
		title : {
			text : '일별 그래프',
			subtext : '일별조회'
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {
			data : [ '종합', '현금', '포인트' ]
		},
		toolbox : {
			show : false
		},
		calculable : false,
		xAxis : [ {
			type : 'category',
			data : [ '2018.01.01', '2018.01.02', '2018.01.03', '2018.01.04',
					'2018.01.05', '2018.01.06', '2018.01.07', '2018.01.08',
					'2018.01.09', '2018.01.10' ]
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [
				{
					name : '종합',
					type : 'bar',
					data : [ 11000, 12000, 13000, 14000, 15000, 16000, 17000,
							18000, 19000, 20000 ],
					markPoint : {
						data : [ {
							type : 'max',
							name : '최대값'
						}, {
							type : 'min',
							name : '최소값'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				},
				{
					name : '현금',
					type : 'bar',
					data : [ 9900, 10800, 11700, 12600, 13500, 14400, 15300,
							16200, 17100, 18000 ],
					markPoint : {
						data : [ {
							name : '최대값',
							type : 'max'
						}, {
							name : '최소값',
							type : 'min'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				},
				{
					name : '포인트',
					type : 'bar',
					data : [ 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800,
							1900, 2000 ],
					markPoint : {
						data : [ {
							name : '최대값',
							type : 'max'
						}, {
							name : '최소값',
							type : 'min'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				} ]
	});
	/*echartBar- 월별!!--------------------------------------------------------------------------------------------*/
	var echartBar = echarts.init(document.getElementById('mainb1'), theme);

	echartBar.setOption({
		title : {
			text : '월별 그래프',
			subtext : '월별조회'
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {
			data : [ '종합', '현금', '포인트' ]
		},
		toolbox : {
			show : false
		},
		calculable : false,
		xAxis : [ {
			type : 'category',
			data : [ '2017.03', '2017.04', '2017.05', '2017.06', '2017.07',
					'2017.08', '2017.09', '2017.10', '2017.11', '2017.12' ]
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [
				{
					name : '종합',
					type : 'bar',
					data : [ 1100000, 1200000, 1300000, 140000, 1500000,
							1600000, 1700000, 1800000, 1900000, 2000000 ],
					markPoint : {
						data : [ {
							type : 'max',
							name : '최대값'
						}, {
							type : 'min',
							name : '최소값'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				},
				{
					name : '현금',
					type : 'bar',
					data : [ 990000, 1080000, 1170000, 1260000, 1350000,
							1440000, 1530000, 1620000, 1710000, 1800000 ],
					markPoint : {
						data : [ {
							name : '최대값',
							type : 'max'
						}, {
							name : '최소값',
							type : 'min'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				},
				{
					name : '포인트',
					type : 'bar',
					data : [ 110000, 120000, 130000, 140000, 150000, 160000,
							170000, 180000, 190000, 200000 ],
					markPoint : {
						data : [ {
							name : '최대값',
							type : 'max'
						}, {
							name : '최소값',
							type : 'min'
						} ]
					},
					markLine : {
						data : [ {
							type : 'average',
							name : '평균'
						} ]
					}
				} ]
	});
	/*echartBar- 연별!!--------------------------------------------------------------------------------------------*/
	var echartBar = echarts.init(document.getElementById('mainb2'), theme);

	echartBar.setOption({
		title : {
			text : '연별 그래프',
			subtext : '연별조회'
		},
		tooltip : {
			trigger : 'axis'
		},
		legend : {
			data : [ '종합', '현금', '포인트' ]
		},
		toolbox : {
			show : false
		},
		calculable : false,
		xAxis : [ {
			type : 'category',
			data : [ '2013', '2014', '2015', '2016', '2017' ]
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [ {
			name : '종합',
			type : 'bar',
			data : [ 11000000, 12000000, 13000000, 14000000, 15000000 ],
			markPoint : {
				data : [ {
					type : 'max',
					name : '최대값'
				}, {
					type : 'min',
					name : '최소값'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '평균'
				} ]
			}
		}, {
			name : '현금',
			type : 'bar',
			data : [ 9900000, 10800000, 11700000, 12600000, 13500000 ],
			markPoint : {
				data : [ {
					name : '최대값',
					type : 'max'
				}, {
					name : '최소값',
					type : 'min'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '평균'
				} ]
			}
		}, {
			name : '포인트',
			type : 'bar',
			data : [ 1100000, 1200000, 1300000, 1400000, 1500000 ],
			markPoint : {
				data : [ {
					name : '최대값',
					type : 'max'
				}, {
					name : '최소값',
					type : 'min'
				} ]
			},
			markLine : {
				data : [ {
					type : 'average',
					name : '평균'
				} ]
			}
		} ]
	});
</script>
