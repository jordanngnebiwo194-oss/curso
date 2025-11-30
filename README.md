# Neon Industrial Design Portfolio Landing Page

A modern landing page built to match the Figma design exactly, featuring:
- Gradient hero section with purple/blue theme
- 3D experience showcase
- Video background integration
- Responsive design

## Repository Status

✅ **Files Successfully Pushed:**
- `index.html` - Main HTML structure
- `styles.css` - Complete styling matching Figma design
- `assets/neon-design.svg` - Logo SVG

⚠️ **Pending Upload:**
- `assets/background.png` - Background image (large file, needs manual upload)

## To Complete the Setup

The background image is too large to upload via API. You have two options:

### Option 1: Using Git (Recommended)
If you have Git installed:
```bash
git clone https://github.com/jordanngnebiwo194-oss/curso.git
cd curso
git add assets/background.png
git commit -m "Add background image"
git push origin main
```

### Option 2: Using PowerShell Script
1. Set your GitHub Personal Access Token:
   ```powershell
   $env:GITHUB_TOKEN = "your_token_here"
   ```
2. Run the upload script:
   ```powershell
   .\upload-image.ps1
   ```

### Option 3: Manual Upload via GitHub Web Interface
1. Go to https://github.com/jordanngnebiwo194-oss/curso
2. Navigate to the `assets` folder
3. Click "Add file" → "Upload files"
4. Drag and drop `background.png`
5. Commit the changes

## Project Structure

```
curso/
├── index.html
├── styles.css
├── assets/
│   ├── neon-design.svg
│   └── background.png (needs upload)
└── README.md
```

## Features

- **Exact Figma Match**: Colors, spacing, typography, and layout match the design precisely
- **Responsive Design**: Mobile-friendly breakpoints included
- **Modern Gradients**: Purple/blue gradient background
- **Video Integration**: Autoplay video background from Pexels

## View the Page

Simply open `index.html` in a web browser to view the landing page.
