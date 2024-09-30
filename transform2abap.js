const fs = require('fs');
const path = require('path');

// Define source and target directories
const sourceDir = path.join(__dirname, 'source/webapp/cc');
const targetDir = path.join(__dirname, 'target_abap');

// Function to read the file content from the source directory
function readFileContent(filePath) {
    return fs.promises.readFile(filePath, 'utf-8');
}

// Function to create a new file in the target directory
function createFileInTargetDir(targetFilePath, content) {
    return fs.promises.writeFile(targetFilePath, content, 'utf-8');
}

// Function to format the content into an ABAP class method
function formatAsAbapClass(content, className) {
    const formattedContent = content.split('\n').map(line => `             \`${line.replace(/`/g, '``')}\` && |\\n|  &&`).join('\n');
    return `CLASS ${className} DEFINITION
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


CLASS ${className} IMPLEMENTATION.

  METHOD get.

    result = ${formattedContent}
              \`\`.

  ENDMETHOD.

ENDCLASS.`;
}

// Main function to read the source file and create a new target file
async function main() {
    try {
        const sourceFilePath = path.join(sourceDir, 'DebugTool.js');
        const sourceContent = await readFileContent(sourceFilePath);
        console.log('Source file content fetched successfully.');

        const fileName = path.basename(sourceFilePath, '.js');
        const className = `z2ui5_cl_${fileName}_js`;
        const abapClassContent = formatAsAbapClass(sourceContent, className);

        const targetFilePath = path.join(targetDir, `${className}.clas.abap`);
        await createFileInTargetDir(targetFilePath, abapClassContent);
        console.log('Target file created successfully at:', targetFilePath);
    } catch (error) {
        console.error('Error:', error.message);
    }
}

// Run the main function
main();