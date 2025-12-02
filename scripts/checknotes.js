const fs = require('fs');
const path = require('path');

// Get file path from command line arguments
const filePath = process.argv[2];

if (!filePath) {
    console.error('Usage: node checknotes.js <filepath>');
    process.exit(1);
}

try {
    // Read the file
    const content = fs.readFileSync(filePath, 'utf-8');

    const pattern = /\*.*?<sup>(.*?)<\/sup>.*?\*.?<note>([0-9]{1,2}\. )?(.*?)<\/note>/g;
    const substitutions = [
        {p: /<sup>(.*?)<\/sup>/, tf: noteNumber => `<sup>${noteNumber}</sup>`},
        {p: /<note>([0-9]{1,2}\. )?/, tf: noteNumber => `<note>${noteNumber}. `}
    ];
    let match;
    let noteNumber = 1;
    let updatedContent = content;
    let notesSection = '';
    

    while ((match = pattern.exec(content)) !== null) {
        let fullMatch = match[0];

        for(const sub of substitutions) {
            const updatedMatch = fullMatch.replace(sub.p, sub.tf(noteNumber));
            updatedContent = updatedContent.replace(fullMatch, updatedMatch);
            fullMatch = updatedMatch;
        }
        notesSection += `\n${noteNumber}. ${match[3].trim()}`;
        noteNumber++;
    }

    try {
        const noteListingPattern = /## Notes[\s\S]*/g
        const fullMatch = noteListingPattern.exec(updatedContent)?.[0];

        if(fullMatch) {
            console.log('Updating existing notes listing.');
            const updatedNotesListing = `## Notes\n${notesSection}\n`;
            updatedContent = updatedContent.replace(fullMatch, updatedNotesListing);
        } else {
            console.log('No existing notes listing found, adding new one.');
            updatedContent += `\n## Notes\n${notesSection}\n`;
        }
    } catch (e) {
        // No notes section found
        console.log('Problem with section found, skipping update of notes listing');
        console.log(e);
    }

    fs.writeFileSync(filePath, updatedContent, 'utf-8');
    console.log('Notes renumbered successfully');
} catch (error) {
    console.error(`Error reading file: ${error.message}`);
    process.exit(1);
}