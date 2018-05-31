<%@page import="fr.eservices.drive.model.Category"%>
<%@page import="java.util.List"%>
<%@include file="_header.jsp" %>
<%-- import required classes --%>

<ul class="categories">
	<%
		List<Category> categories = (List<Category>)request.getAttribute("categories");
		for(Category category: categories){
			
	%>
	<%-- iterate through categories --%>
	<li>
		<%-- set a link to each category content --%>
		<a href="category/<%=category.getId()%>.html">
			<%-- 
				add an image related to category ID.
				Category images are located in /img/ and name catID.jpg (ID as 2 digits)
			 --%>
			<img src="<%=request.getContextPath()%>/img/cat0<%=category.getId()%>.jpg"/><br/>
			<%=category.getName()%>
			<%-- Show category name --%>
		</a>
	</li>
	<%
		}
	%>
</ul>
<%@include file="_footer.jsp" %>