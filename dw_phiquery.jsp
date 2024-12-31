<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery
  id="query01"
  jdbcDriver="org.postgresql.Driver"
  jdbcUrl="jdbc:postgresql://localhost:5432/dwh_dvdrental?user=postgres&password=ariq"
  catalogUri="/WEB-INF/queries/DW_Payment">

SELECT 
    {[Measures].[Total Uang], [Measures].[Total Transaksi]} ON COLUMNS,
    {([Customer].[Semua_Customer], [Kategori].[Semua_Kategori], [Film].[Semua_Film], [Inventory].[Semua_Inventory])} ON ROWS
FROM [Analisis_Payment]
</jp:mondrianQuery>

<c:set var="title01" scope="session">PHI-Minimart - Cube Pendapatan</c:set>
