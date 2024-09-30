const fs = require('fs');
const path = require('path');
const abapClassTemplate = require('./abapClassTemplate');
const xmlTemplate = require('./abapXMLTemplate');

// Define source and target directories
const sourceDir = path.join(__dirname, 'source/webapp');
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
    const formattedContent = content.split('\n').map(line => {
        let formattedLine = '';
        while (line.length > 100) {
            formattedLine += `             \`${line.substring(0, 100).replace(/`/g, '``')}\` && |\\n|  &&\n`;
            line = line.substring(100);
        }
        formattedLine += `             \`${line.replace(/`/g, '``')}\` && |\\n|  &&`;
        return formattedLine;
    }).join('\n');
    return abapClassTemplate(className, formattedContent);
}

// Function to generate a class name from a file path
function generateClassName(filePath) {
    const relativePath = path.relative(sourceDir, filePath);
    const parts = relativePath.split(path.sep);
    const fileName = parts.pop().split('.');
    if (fileName.length > 2) {
        fileName.splice(1, 1); // Remove the middle part
    }
    const folderPath = parts.join('_').toLowerCase();
    return `z2ui5_cl_app_${folderPath}_${fileName.join('_')}`;
}

// Function to recursively get all files in a directory
function getAllFiles(dirPath, arrayOfFiles) {
    const files = fs.readdirSync(dirPath);

    arrayOfFiles = arrayOfFiles || [];

    files.forEach(file => {
        const filePath = path.join(dirPath, file);
        if (fs.statSync(filePath).isDirectory()) {
            arrayOfFiles = getAllFiles(filePath, arrayOfFiles);
        } else {
            arrayOfFiles.push(filePath);
        }
    });

    return arrayOfFiles;
}

// Main function to read the source files and create new target files
async function main() {
    try {
        const files = getAllFiles(sourceDir);

        for (const file of files) {
            const sourceContent = await readFileContent(file);
            console.log(`Source file content fetched successfully for ${file}.`);

            const className = generateClassName(file);
            const abapClassContent = formatAsAbapClass(sourceContent, className);

            const targetFilePath = path.join(targetDir, `${className}.clas.abap`);
            await createFileInTargetDir(targetFilePath, abapClassContent);
            console.log(`Target file created successfully at: ${targetFilePath}`);

            const xmlContent = xmlTemplate(className, `abap2UI5 - ${path.basename(file)}`);
            const xmlFilePath = path.join(targetDir, `${className}.clas.xml`);
            await createFileInTargetDir(xmlFilePath, xmlContent);
            console.log(`XML file created successfully at: ${xmlFilePath}`);
        }
    } catch (error) {
        console.error('Error:', error.message);
    }
}

// Run the main function
main();