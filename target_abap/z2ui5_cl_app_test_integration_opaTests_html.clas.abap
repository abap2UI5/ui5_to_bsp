CLASS z2ui5_cl_app_test_integration_opaTests_html DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS z2ui5_cl_app_test_integration_opaTests_html IMPLEMENTATION.

  METHOD get.

    result =              `<!DOCTYPE html>` && |\n|  &&
             `<html>` && |\n|  &&
             `<head>` && |\n|  &&
             `	<meta charset="utf-8" />` && |\n|  &&
             `	<title>Integration tests for Basic Template</title>` && |\n|  &&
             `` && |\n|  &&
             `	<script` && |\n|  &&
             `		id="sap-ui-bootstrap"` && |\n|  &&
             `		src="../../resources/sap-ui-core.js"` && |\n|  &&
             `		data-sap-ui-theme="sap_horizon"` && |\n|  &&
             `		data-sap-ui-resourceroots='{` && |\n|  &&
             `			"z2ui5": "../../",` && |\n|  &&
             `			"integration": "./"` && |\n|  &&
             `		}'` && |\n|  &&
             `		data-sap-ui-animation="false"` && |\n|  &&
             `		data-sap-ui-compatVersion="edge"` && |\n|  &&
             `		data-sap-ui-async="true"` && |\n|  &&
             `		data-sap-ui-preload="async"` && |\n|  &&
             `		data-sap-ui-oninit="module:integration/opaTests.qunit">` && |\n|  &&
             `	</script>` && |\n|  &&
             `	<link rel="stylesheet" type="text/css" href="../../resources/sap/ui/thirdparty/qunit-2.css">` && |\n|  &&
             `	<script src="../../resources/sap/ui/thirdparty/qunit-2.js"></script>` && |\n|  &&
             `	<script src="../../resources/sap/ui/qunit/qunit-junit.js"></script>` && |\n|  &&
             `</head>` && |\n|  &&
             `<body>` && |\n|  &&
             `	<div id="qunit"></div>` && |\n|  &&
             `	<div id="qunit-fixture"></div>` && |\n|  &&
             `</body>` && |\n|  &&
             `</html>` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.