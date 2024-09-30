# webapp_to_bsp

🚧 transform webapp to bsp 🚧 

#### Run ui5app->bsp

```
npm i
node transform2bsp.js
```
#### Run ui5app->abapstring

```
npm i
node transform2abap.js
```

#### Script bsp

```js

const fs = require('fs-extra');
const path = require('path');

const sourceDir = 'source/webapp';
const targetDir = 'target/src/02';

function transformFileName(filePath) {
  const relativePath = path.relative(sourceDir, filePath);
  const transformedName = `z2ui5.wapa.${relativePath.replace(/\//g, '_')}`;
  return path.join(targetDir, transformedName);
}

async function transformFiles(dir) {
  const entries = await fs.readdir(dir, { withFileTypes: true });
  
  for (const entry of entries) {
    const srcPath = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      await transformFiles(srcPath);
    } else if (entry.isFile()) {
      const destFilePath = transformFileName(srcPath);
      const destDir = path.dirname(destFilePath);

      await fs.ensureDir(destDir);
      await fs.copy(srcPath, destFilePath);
      console.log(`Copied and renamed ${srcPath} to ${destFilePath}`);
    }
  }
}

transformFiles(sourceDir).catch(err => console.error('Error transforming files:', err));

```

#### Script abap
```js
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
```
