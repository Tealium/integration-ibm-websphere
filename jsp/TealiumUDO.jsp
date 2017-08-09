<%--
 =================================================================
  Tealium - Tag Management System - UDO Extension - Adds Data Layer and utag.js javascript to all pages
    
  Setup example below uses store id 10152 and AuroraStorefrontAssetStore
  
  (1) TealiumUDO.jsp file and related .jspf files are placed in /Stores/WebContent/AuroraStorefrontAssetStore/Tealium/
  
  (2) Place "tealium_udo_helper_1_2_0a.jar" (or later) in "/Stores/WebContent/WEB-INF/lib/" directory
  
  (3) To activate, insert following entries into database and restart Wesphere Commerce web server
  
  		insert into storeconf (storeent_id, name, value, optcounter) 
  		values (10152, 'wc.pgl.jspInclude_Tealium_TealiumUDO', '/AuroraStorefrontAssetStore/Tealium/TealiumUDO.jsp', 0);
  
  		insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.account', 'myaccount', 0);
		insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.profile', 'myprofile', 0);
		insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.environment', 'prod', 0);
		
  (4) If not set already, set env_includeJSPFExtension variable to "true" in the file:
  		/Stores/WebContent/AuroraStorefrontAssetStore/Common/EnvironmentSetup.jspf
  		
 ================================================================
--%>
<!-- BEGIN Tealium -->
<%@ page import="com.tealium.util.udohelpers.*" %>
<%@ page import="java.util.EnumSet" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>

<%@ include file= "../Common/EnvironmentSetup.jspf" %>
<%@ include file="TealiumUDO_Data.jspf" %>
<%@ include file="TealiumUDO_UI.jspf" %>
<!-- END Tealium -->
