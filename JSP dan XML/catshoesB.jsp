<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost/catshoess?user=root&password=" 
	catalogUri="/WEB-INF/queries/catshoes.xml">

	SELECT {[Measures].[totalPenjualan]} ON COLUMNS,
       Filter({[Pemasok].[namaPemasok].Members}, [Measures].[totalPenjualan] > 0) ON ROWS
	FROM Penjualan

</jp:mondrianQuery>

<c:set var="title01" scope="session">Catshoes - Produk berdasarkan Pemasok</c:set>