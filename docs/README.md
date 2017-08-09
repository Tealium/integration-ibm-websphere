Tealium IBM WebSphere Commerce Extension
====================

## Version

- Version 1.00 Released on 2015 May 5.

## Purpose

Adds Tealium Data Layer utag_data object and utag.js include on every page

## Install

The example below uses store id 10152 and AuroraStorefrontAssetStore

1. /jsp/TealiumUDO.jsp file and related .jspf files are placed in /Stores/WebContent/AuroraStorefrontAssetStore/Tealium/

2. Place "/jar/tealium_udo_helper_1_2_0a.jar" in "/Stores/WebContent/WEB-INF/lib/" directory

3. To activate, insert following entries into database and restart WebSphere Commerce web server

```
                insert into storeconf (storeent_id, name, value, optcounter) 
                values (10152, 'wc.pgl.jspInclude_Tealium_TealiumUDO', '/AuroraStorefrontAssetStore/Tealium/TealiumUDO.jsp', 0);
  
                insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.account', '##ACCOUNT##', 0);
                insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.profile', '##PROFILE##', 0);
                insert into storeconf (storeent_id, name, value, optcounter) values (10152, 'wc.tealium.environment', 'prod', 0);
```

4. If not set already, set env_includeJSPFExtension variable to "true" in the file:

     /Stores/WebContent/AuroraStorefrontAssetStore/Common/EnvironmentSetup.jspf

5.  To validate the implementation, go to "View -> Source" in your web browser and look for 'utag_data' in the page source.

      See included Validation.txt file for sample values on specific commerce pages.  Use a proxy tool or Chrome developer tools
      to confirm that the utag.js file itself is loaded by the browser.  Once you activate a tag in Tealium iQ (such as Google
      Universal Analytics or IBM Digital Analytics) you can see data being passed to your analytics vendor.  This is also seen
      using a proxy tool such as Charles Proxy, HTTPFox, or Chrome browser Developer Tools.


## Additional Help

If you are not sure of values for 'wc.tealium.account' or 'wc.tealium.profile' login to Tealium iQ at https://my.tealium.com and view the "Code Center."

For additional help, consult your Account Manager or Deployment Manager.

