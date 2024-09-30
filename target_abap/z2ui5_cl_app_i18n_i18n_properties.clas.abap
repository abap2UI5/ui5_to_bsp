CLASS z2ui5_cl_app_i18n_i18n_properties DEFINITION
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


CLASS z2ui5_cl_app_i18n_i18n_properties IMPLEMENTATION.

  METHOD get.

    result =              `# This is the resource bundle for z2ui5` && |\n|  &&
             `` && |\n|  &&
             `#XFLD,24` && |\n|  &&
             `flpTitle=abap2UI5` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.