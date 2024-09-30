# ui5_to_bsp

🚧

transform webapp to bsp

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
