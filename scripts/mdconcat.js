const fs = require('fs');
const path = require('path');
const matter = require('gray-matter');
const glob = require('glob');

function concatenateMarkdownFiles(filePaths) {
    let result = '';

    for (const filePath of filePaths) {
        const content = fs.readFileSync(filePath, 'utf-8');
        const { data, content: body } = matter(content);

        const title = data.title || path.basename(filePath, path.extname(filePath));
        result += `# ${title}\n${body}\n\n`;
    }

    return result;
}

const files = process.argv.filter(arg => !arg.startsWith('-')).slice(2);
if (files.length === 0) {
    console.error('Please provide file paths as arguments');
    process.exit(1);
}

const filePaths = files.flatMap(file => glob.sync(file));
const outputFilePath = process.argv.find(arg => arg.startsWith('-o') || arg.startsWith('--output'))?.split('=')[1];

if (outputFilePath) {
    const concatenatedContent = concatenateMarkdownFiles(filePaths);
    fs.writeFileSync(outputFilePath, concatenatedContent);
    console.log(`Concatenated content written to ${outputFilePath}`);
} else {
    console.log(concatenateMarkdownFiles(filePaths));
}