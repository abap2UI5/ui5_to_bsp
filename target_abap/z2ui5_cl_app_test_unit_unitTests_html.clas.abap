CLASS z2ui5_cl_app_test_unit_unitTests_html DEFINITION
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


CLASS z2ui5_cl_app_test_unit_unitTests_html IMPLEMENTATION.

  METHOD get.

    result =              `<!DOCTYPE html>` && |\n|  &&
             `<html>` && |\n|  &&
             `<head>` && |\n|  &&
             `	<meta charset="utf-8">` && |\n|  &&
             `	<title>Unit tests for z2ui5</title>` && |\n|  &&
             `	<script` && |\n|  &&
             `		id="sap-ui-bootstrap"` && |\n|  &&
             `		src="../../resources/sap-ui-core.js"` && |\n|  &&
             `		data-sap-ui-resourceroots='{` && |\n|  &&
             `			"z2ui5": "../../",` && |\n|  &&
             `			"unit": "."` && |\n|  &&
             `		}'` && |\n|  &&
             `		data-sap-ui-async="true"` && |\n|  &&
             `		data-sap-ui-oninit="module:unit/unitTests.qunit">` && |\n|  &&
             `	</script>` && |\n|  &&
             `	<link rel="stylesheet" type="text/css" href="../../resources/sap/ui/thirdparty/qunit-2.css">` && |\n|  &&
             `	<script src="../../resources/sap/ui/thirdparty/qunit-2.js"></script>` && |\n|  &&
             `	<script src="../../resources/sap/ui/qunit/qunit-junit.js"></script>` && |\n|  &&
             `	<script src="../../resources/sap/ui/qunit/qunit-coverage.js"></script>` && |\n|  &&
             `	<script src="../../resources/sap/ui/thirdparty/sinon.js"></script>` && |\n|  &&
             `	<script src="../../resources/sap/ui/thirdparty/sinon-qunit.js"></script>` && |\n|  &&
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