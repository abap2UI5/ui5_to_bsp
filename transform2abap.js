const fs = require('fs');
const path = require('path');
const abapClassTemplate = require('./abapClassTemplate');
const xmlTemplate = require('./abapXMLTemplate');

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
    return abapClassTemplate(className, formattedContent);
}

// Main function to read the source files and create new target files
async function main() {
    try {
        const files = fs.readdirSync(sourceDir);
        const jsFiles = files.filter(file => path.extname(file) === '.js');

        for (const file of jsFiles) {
            const sourceFilePath = path.join(sourceDir, file);
            const sourceContent = await readFileContent(sourceFilePath);
            console.log(`Source file content fetched successfully for ${file}.`);

            const fileName = path.basename(sourceFilePath, '.js').toLowerCase();
            const className = `z2ui5_cl_app_${fileName}_js`;
            const abapClassContent = formatAsAbapClass(sourceContent, className);

            const targetFilePath = path.join(targetDir, `${className}.clas.abap`);
            await createFileInTargetDir(targetFilePath, abapClassContent);
            console.log(`Target file created successfully at: ${targetFilePath}`);

            const xmlContent = xmlTemplate(className, `abap2UI5 - ${file}`);
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