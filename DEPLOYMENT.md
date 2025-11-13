# 🚀 GitHub Deployment Guide

This guide will walk you through deploying your Depression Risk Factors Analysis project to GitHub and GitHub Pages.

## 📋 Prerequisites

- [x] Git repository initialized ✅
- [x] Files committed ✅
- [ ] GitHub account (create one at [github.com](https://github.com))
- [ ] Git configured with your credentials

## 🔧 Step 1: Configure Git (If Not Already Done)

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## 📦 Step 2: Create GitHub Repository

### Option A: Via GitHub Website (Recommended)

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** icon in the top-right corner
3. Select **"New repository"**
4. Fill in the details:
   - **Repository name**: `depression-risk-analysis` (or your preferred name)
   - **Description**: `Statistical analysis of depression risk factors using Add Health dataset`
   - **Visibility**: Choose **Public** (required for free GitHub Pages) or **Private**
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click **"Create repository"**

### Option B: Via GitHub CLI (Advanced)

```bash
# Install GitHub CLI if you haven't: https://cli.github.com/
gh repo create depression-risk-analysis --public --source=. --remote=origin --push
```

## 🔗 Step 3: Connect Local Repository to GitHub

After creating the repository on GitHub, you'll see a page with commands. Use these:

```bash
cd "/Users/harsh/Documents/Imperial/Semester3/Healtcare_Analytics/Individual_Assignment"

# Add GitHub as remote origin
git remote add origin https://github.com/YOUR_USERNAME/depression-risk-analysis.git

# Verify the remote was added
git remote -v

# Push your code to GitHub
git push -u origin main
```

Replace `YOUR_USERNAME` with your actual GitHub username.

## 🌐 Step 4: Enable GitHub Pages

### Via GitHub Website:

1. Go to your repository on GitHub
2. Click **"Settings"** (top menu)
3. Scroll down and click **"Pages"** in the left sidebar
4. Under **"Source"**, select:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Click **"Save"**
6. Wait 2-3 minutes for deployment
7. Your site will be live at: `https://YOUR_USERNAME.github.io/depression-risk-analysis/`

### Verification:

After a few minutes, refresh the Settings → Pages section. You should see:
```
✅ Your site is live at https://YOUR_USERNAME.github.io/depression-risk-analysis/
```

## 🎨 Step 5: Update README with Your Live URL

After deployment, update the README badge:

1. Open `README.md`
2. Replace `yourusername` with your GitHub username in this line:
   ```markdown
   [![View Project](https://img.shields.io/badge/View-Live%20Demo-blue?style=for-the-badge)](https://yourusername.github.io/depression-risk-analysis/)
   ```
3. Save and commit:
   ```bash
   git add README.md
   git commit -m "Update live demo URL in README"
   git push
   ```

## 🔄 Step 6: Making Updates

Whenever you make changes to your project:

```bash
# 1. Stage your changes
git add .

# 2. Commit with a descriptive message
git commit -m "Description of changes"

# 3. Push to GitHub
git push

# Your GitHub Pages site will automatically update in 1-2 minutes!
```

## 📱 Step 7: Share Your Project

Your project is now live! Share it using:

- **Direct Link**: `https://YOUR_USERNAME.github.io/depression-risk-analysis/`
- **Repository**: `https://github.com/YOUR_USERNAME/depression-risk-analysis`
- **LinkedIn**: Add to your projects section
- **Resume/CV**: Include the live demo link

## 🎯 Optional Enhancements

### Add a Custom Domain (Optional)

1. Buy a domain (e.g., from Namecheap, Google Domains)
2. In repository Settings → Pages → Custom domain
3. Enter your domain and click Save
4. Configure DNS settings with your domain provider

### Add Repository Topics

1. Go to your repository on GitHub
2. Click the gear icon ⚙️ next to "About"
3. Add topics: `healthcare-analytics`, `depression`, `statistics`, `r`, `data-science`, `add-health`
4. Save changes

### Create a Repository Description

1. Click the gear icon ⚙️ next to "About" (top right of repo)
2. Add description: "Statistical analysis of depression risk factors using Add Health dataset"
3. Add website: Your GitHub Pages URL
4. Save

## 🐛 Troubleshooting

### Issue: Push Rejected (Authentication)

**Solution**: Use Personal Access Token instead of password
1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Generate new token with `repo` scope
3. Use token as password when pushing

Or set up SSH keys:
```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
# Add to GitHub: Settings → SSH and GPG keys
```

### Issue: 404 Error on GitHub Pages

**Solutions**:
- Wait 2-3 minutes after first deployment
- Check Settings → Pages is configured correctly
- Ensure `index.html` is in root directory ✅
- Clear browser cache

### Issue: CSS Not Loading

**Solution**: GitHub Pages automatically handles relative paths, but ensure:
- All links in `index.html` are relative (not absolute paths) ✅
- Files are committed and pushed to GitHub

## 📊 Monitoring Your Site

### GitHub Actions (Automatic)

GitHub automatically builds and deploys your site. View progress:
1. Go to your repository
2. Click **"Actions"** tab
3. See deployment status

### Analytics (Optional)

Add Google Analytics to track visitors:
1. Get tracking code from Google Analytics
2. Add to `index.html` before `</head>`
3. Commit and push

## ✅ Deployment Checklist

- [ ] Git repository initialized
- [ ] GitHub account created
- [ ] GitHub repository created
- [ ] Local repo connected to GitHub
- [ ] Code pushed to GitHub
- [ ] GitHub Pages enabled
- [ ] Site is live and accessible
- [ ] README updated with live URL
- [ ] Repository topics added
- [ ] Repository description added
- [ ] Shared on LinkedIn/portfolio

## 🎉 Success!

Your Depression Risk Factors Analysis is now live on the web! 🌐

**Next Steps:**
1. Share your project with classmates and professors
2. Add it to your portfolio/resume
3. Continue updating and improving the analysis
4. Consider adding more visualizations or interactive elements

---

Need help? Open an issue in the repository or refer to [GitHub Pages documentation](https://docs.github.com/en/pages).

**Happy Deploying! 🚀**

