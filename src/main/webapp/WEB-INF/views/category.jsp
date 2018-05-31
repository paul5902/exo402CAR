<%@page import="java.text.DecimalFormat"%>
<%@include file="_header.jsp" %>
<%@page import="fr.eservices.drive.model.Article"%>
<%@page import="java.util.List"%>
<%-- import required classes --%>

<ul class="articles">
<%-- Iterate through articles ... --%>
	<%
		List<Article> articles = (List<Article>)request.getAttribute("articles");
		DecimalFormat df = new DecimalFormat("0.00##");
		for(Article article : articles){
			
	%>
<li>
	<a href="#">
		<span class="price"><%=df.format(Double.valueOf(article.getPrice())/100)%> &euro;</span>
		<%-- 
			show product image, you can use 'https://static1.chronodrive.com'
			as base URL and img path to complete the image URL 
		--%>
		<img src="https://static1.chronodrive.com/<%=article.getImg()%>"/><br/>
			<%=article.getName()%>
		<%-- show product name --%> <br/>
	</a>
</li>
	<%
		}
	%>
</ul>
<%@include file="_footer.jsp" %>