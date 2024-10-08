CLASS z2ui5_cl_app_test_flpSandbox_html DEFINITION
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


CLASS z2ui5_cl_app_test_flpSandbox_html IMPLEMENTATION.

  METHOD get.

    result =              `<!DOCTYPE HTML>` && |\n|  &&
             `<html lang="en">` && |\n|  &&
             `<!-- Copyright (c) 2015 SAP AG, All Rights Reserved -->` && |\n|  &&
             `<head>` && |\n|  &&
             `    <meta http-equiv="X-UA-Compatible" content="IE=edge">` && |\n|  &&
             `    <meta charset="UTF-8">` && |\n|  &&
             `    <meta name="viewport" content="width=device-width, initial-scale=1.0">` && |\n|  &&
             `    <title>{{appTitle}}</title>` && |\n|  &&
             `` && |\n|  &&
             `    <!-- Bootstrap the unified shell in sandbox mode for standalone usage.` && |\n|  &&
             `` && |\n|  &&
             `         The renderer is specified in the global Unified Shell configuration object "sap-ushell-conf` && |\n|  &&
             `ig".` && |\n|  &&
             `` && |\n|  &&
             `         The fiori2 renderer will render the shell header allowing, for instance,` && |\n|  &&
             `         testing of additional application setting buttons.` && |\n|  &&
             `` && |\n|  &&
             `         The navigation target resolution service is configured in a way that the empty URL hash is` && |\n|  &&
             `         resolved to our own application.` && |\n|  &&
             `` && |\n|  &&
             `         This example uses relative path references for the SAPUI5 resources and test-resources;` && |\n|  &&
             `         it might be necessary to adapt them depending on the target runtime platform.` && |\n|  &&
             `         The sandbox platform is restricted to development or demo use cases and must NOT be used` && |\n|  &&
             `         for productive scenarios.` && |\n|  &&
             `    -->` && |\n|  &&
             `    <script type="text/javascript">` && |\n|  &&
             `        window["sap-ushell-config"] = {` && |\n|  &&
             `            defaultRenderer: "fiori2",` && |\n|  &&
             `            bootstrapPlugins: {` && |\n|  &&
             `                "RuntimeAuthoringPlugin": {` && |\n|  &&
             `                    component: "sap.ushell.plugins.rta",` && |\n|  &&
             `                    config: {` && |\n|  &&
             `                        validateAppVersion: false` && |\n|  &&
             `                    }` && |\n|  &&
             `                }` && |\n|  &&
             `            },` && |\n|  &&
             `            renderers: {` && |\n|  &&
             `                fiori2: {` && |\n|  &&
             `                    componentData: {` && |\n|  &&
             `                        config: {` && |\n|  &&
             `                            search: "hidden",` && |\n|  &&
             `                            enableSearch: false` && |\n|  &&
             `                        }` && |\n|  &&
             `                    }` && |\n|  &&
             `                }` && |\n|  &&
             `            },` && |\n|  &&
             `            applications: {` && |\n|  &&
             `                "z2ui5-display": {` && |\n|  &&
             `                    title: "App Title",` && |\n|  &&
             `                    description: "An SAP Fiori application.",` && |\n|  &&
             `                    additionalInformation: "SAPUI5.Component=z2ui5",` && |\n|  &&
             `                    applicationType: "URL",` && |\n|  &&
             `                    url: "../"` && |\n|  &&
             `                }` && |\n|  &&
             `            }` && |\n|  &&
             `        };` && |\n|  &&
             `    </script>` && |\n|  &&
             `` && |\n|  &&
             `    <script src="../test-resources/sap/ushell/bootstrap/sandbox.js" id="sap-ushell-bootstrap"></scri` && |\n|  &&
             `pt>` && |\n|  &&
             `    <!-- Bootstrap the UI5 core library. 'data-sap-ui-frameOptions="allow"'' is a NON-SECURE setting` && |\n|  &&
             ` for test environments -->` && |\n|  &&
             `    <script id="sap-ui-bootstrap"` && |\n|  &&
             `        src="../resources/sap-ui-core.js"` && |\n|  &&
             `        data-sap-ui-libs="sap.m,sap.ui.core,sap.ushell"` && |\n|  &&
             `        data-sap-ui-async="true"` && |\n|  &&
             `        data-sap-ui-preload="async"` && |\n|  &&
             `        data-sap-ui-theme="sap_horizon"` && |\n|  &&
             `        data-sap-ui-compatVersion="edge"` && |\n|  &&
             `        data-sap-ui-language="en"` && |\n|  &&
             `        data-sap-ui-resourceroots='{"z2ui5": "../"}'` && |\n|  &&
             `        data-sap-ui-frameOptions="allow"` && |\n|  &&
             `        data-sap-ui-flexibilityServices='[{"connector": "LocalStorageConnector"}]'>` && |\n|  &&
             `    </script>` && |\n|  &&
             `    <script id="locate-reuse-libs" src="./locate-reuse-libs.js" data-sap-ui-manifest-uri="../manifes` && |\n|  &&
             `t.json">` && |\n|  &&
             `    </script>` && |\n|  &&
             `</head>` && |\n|  &&
             `` && |\n|  &&
             `<!-- UI Content -->` && |\n|  &&
             `` && |\n|  &&
             `<body class="sapUiBody" id="content">` && |\n|  &&
             `</body>` && |\n|  &&
             `` && |\n|  &&
             `</html>` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.