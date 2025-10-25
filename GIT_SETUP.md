# Git Setup & Publishing Guide

## Initial Setup (First Time Only)

### 1. Initialize Git Repository

```bash
cd /home/pascal/linux-day-2025-openhw
git init
```

### 2. Add Files to Git

```bash
# Add all files except those in .gitignore
git add .

# Check what will be committed
git status
```

### 3. Create Initial Commit

```bash
git commit -m "Initial commit: Linux Day 2025 Angelo presentation

- Complete Marp presentation (37 slides)
- Technical analysis of Angelo project
- Challenges: safety, norms, liability
- FabLab distribution approach
- Future improvements
- Generated HTML and PDF outputs
"
```

## Publishing to GitHub

### Option 1: Create New Repository on GitHub

1. Go to https://github.com/new
2. Repository name: `linux-day-2025-openhw` (or your preferred name)
3. Description: `Presentazione Linux Day 2025 - Progetto Angelo Open Hardware`
4. Choose: Public (recommended for open source)
5. **Do NOT** initialize with README, .gitignore, or license (we already have them)
6. Click "Create repository"

### Option 2: Use GitHub CLI (if installed)

```bash
gh repo create linux-day-2025-openhw --public --source=. --remote=origin
```

### 3. Connect Local to GitHub

```bash
# Replace YOUR-USERNAME with your GitHub username
git remote add origin https://github.com/YOUR-USERNAME/linux-day-2025-openhw.git

# Verify remote
git remote -v
```

### 4. Push to GitHub

```bash
# Push main branch
git branch -M main
git push -u origin main
```

## Updating After Changes

```bash
# Make your changes to files...

# Add modified files
git add .

# Commit with descriptive message
git commit -m "Update: describe your changes here"

# Push to GitHub
git push
```

## Enable GitHub Pages (Optional)

### Automatic Deployment via GitHub Actions

The repository includes `.github/workflows/build.yml` which will:
1. ✅ Auto-build HTML and PDF on every push
2. ✅ Deploy to GitHub Pages automatically

### Enable GitHub Pages:

1. Go to your repo: `https://github.com/YOUR-USERNAME/linux-day-2025-openhw`
2. Click **Settings** → **Pages** (left sidebar)
3. Under "Build and deployment":
   - Source: **Deploy from a branch**
   - Branch: **gh-pages** (will be created automatically by GitHub Actions)
   - Folder: **/ (root)**
4. Click **Save**

After the first push, GitHub Actions will:
- Build the presentation
- Create `gh-pages` branch
- Deploy automatically

Your presentation will be available at:
```
https://YOUR-USERNAME.github.io/linux-day-2025-openhw/
```

## Quick Reference Commands

```bash
# Check status
git status

# See changes
git diff

# View commit history
git log --oneline

# Add all changes
git add .

# Commit changes
git commit -m "Your message"

# Push to GitHub
git push

# Pull latest changes
git pull

# Create new branch
git checkout -b feature-name

# Switch branches
git checkout main

# Merge branch
git merge feature-name
```

## File Structure in Git

```
Repository files tracked by git:
✅ slides.md               # Source presentation
✅ package.json            # Dependencies
✅ build.sh                # Build script
✅ README.md               # Documentation
✅ QUICKSTART.md           # Quick start guide
✅ BUILD_SUMMARY.md        # Build summary
✅ LICENSE                 # CC-BY-SA 4.0
✅ .gitignore              # Git exclusions
✅ .editorconfig           # Editor settings
✅ .github/workflows/      # GitHub Actions CI/CD
✅ base.md, base2.md       # Draft materials
✅ RelazioneANGELO.txt     # Technical report

Ignored by git (in .gitignore):
❌ node_modules/           # Dependencies (auto-installed)
❌ dist/                   # Generated outputs (auto-built)
❌ package-lock.json       # Lock file (can be tracked if desired)
```

## Workflow Example

### Daily workflow:
```bash
# 1. Make changes to slides.md
nano slides.md

# 2. Test locally
npm run build
firefox dist/slides.html

# 3. Commit and push
git add slides.md
git commit -m "Update: improved technical analysis section"
git push
```

GitHub Actions will automatically:
- ✅ Run `npm install`
- ✅ Run `npm run build`
- ✅ Generate HTML + PDF
- ✅ Deploy to GitHub Pages

## Troubleshooting

### Problem: "permission denied (publickey)"

**Solution**: Use HTTPS instead of SSH, or setup SSH keys

```bash
# Use HTTPS (easier for beginners)
git remote set-url origin https://github.com/YOUR-USERNAME/linux-day-2025-openhw.git
```

### Problem: "refusing to merge unrelated histories"

**Solution**: Force pull with rebase

```bash
git pull origin main --allow-unrelated-histories
```

### Problem: GitHub Actions failing

1. Check Actions tab in GitHub repo
2. Click on failed workflow
3. Read error messages
4. Common fixes:
   - Ensure package.json is committed
   - Ensure slides.md exists
   - Check Node.js version in workflow

## Repository Badges (Optional)

Add these to your README.md:

```markdown
![Build Status](https://github.com/YOUR-USERNAME/linux-day-2025-openhw/actions/workflows/build.yml/badge.svg)
![License](https://img.shields.io/badge/License-CC%20BY--SA%204.0-blue.svg)
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-deployed-success)
```

## License Information

This repository is licensed under **CC-BY-SA 4.0**:
- ✅ Free to share and adapt
- ✅ Commercial use allowed
- ⚠️ Must give attribution
- ⚠️ Share modifications under same license

## Next Steps After Publishing

1. ✅ Verify repo is visible on GitHub
2. ✅ Check GitHub Actions completed successfully
3. ✅ Test GitHub Pages URL (if enabled)
4. ✅ Share link with Linux Day organizers
5. ✅ Add link to FabLab Bergamo website

---

**Ready to publish?** Run these commands:

```bash
git init
git add .
git commit -m "Initial commit: Linux Day 2025 presentation"
git remote add origin https://github.com/YOUR-USERNAME/linux-day-2025-openhw.git
git branch -M main
git push -u origin main
```

Good luck with your presentation! 🚀
