CLASS z2ui5_cl_app_test_testsuite_html DEFINITION
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


CLASS z2ui5_cl_app_test_testsuite_html IMPLEMENTATION.

  METHOD get.

    result =              `<!DOCTYPE html>` && |\n|  &&
             `<html>` && |\n|  &&
             `    <head>` && |\n|  &&
             `        <title>` && |\n|  &&
             `            QUnit test suite for z2ui5` && |\n|  &&
             `        </title>` && |\n|  &&
             `        <script src="../resources/sap/ui/qunit/qunit-redirect.js"></script>` && |\n|  &&
             `        <script src="testsuite.qunit.js" data-sap-ui-testsuite></script>` && |\n|  &&
             `    </head>` && |\n|  &&
             `    <body></body>` && |\n|  &&
             `</html>` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.