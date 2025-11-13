# Quick Deploy Commands for harshm27

## Step 1: Create GitHub Repository

1. Go to: https://github.com/new
2. Repository name: `depression-risk-analysis`
3. Description: `Statistical analysis of depression risk factors using Add Health dataset`
4. Choose: **Public**
5. **DO NOT** initialize with README, .gitignore, or license
6. Click **"Create repository"**

## Step 2: Push to GitHub

Copy and paste these commands one by one:

```bash
cd "/Users/harsh/Documents/Imperial/Semester3/Healtcare_Analytics/Individual_Assignment"

git remote add origin https://github.com/harshm27/depression-risk-analysis.git

git push -u origin main
```

You'll be prompted for your GitHub credentials:
- Username: `harshm27`
- Password: Use a **Personal Access Token** (not your password)
  - Get token from: https://github.com/settings/tokens
  - Click "Generate new token (classic)"
  - Check "repo" scope
  - Copy the token and paste it as your password

## Step 3: Enable GitHub Pages

1. Go to: https://github.com/harshm27/depression-risk-analysis/settings/pages
2. Under "Source":
   - Branch: **main**
   - Folder: **/ (root)**
3. Click **Save**
4. Wait 2-3 minutes

## Step 4: View Your Live Site!

Your site will be live at:

**https://harshm27.github.io/depression-risk-analysis/**

## Troubleshooting

### If you get authentication errors:

**Use SSH instead** (recommended):

```bash
# Generate SSH key (if you don't have one)
ssh-keygen -t ed25519 -C "your.email@imperial.ac.uk"

# Copy your public key
cat ~/.ssh/id_ed25519.pub

# Add to GitHub: https://github.com/settings/ssh/new
# Paste the key and save

# Update remote to use SSH
cd "/Users/harsh/Documents/Imperial/Semester3/Healtcare_Analytics/Individual_Assignment"
git remote set-url origin git@github.com:harshm27/depression-risk-analysis.git

# Push again
git push -u origin main
```

### If pages don't load:

- Wait 2-3 more minutes
- Check: https://github.com/harshm27/depression-risk-analysis/deployments
- Hard refresh your browser (Cmd+Shift+R)

## Future Updates

Whenever you make changes:

```bash
cd "/Users/harsh/Documents/Imperial/Semester3/Healtcare_Analytics/Individual_Assignment"
git add .
git commit -m "Description of your changes"
git push
```

Your site will automatically update in 1-2 minutes!

---

## Your Project URLs

- **Live Website**: https://harshm27.github.io/depression-risk-analysis/
- **GitHub Repository**: https://github.com/harshm27/depression-risk-analysis
- **Settings**: https://github.com/harshm27/depression-risk-analysis/settings

## Need Help?

Refer to `DEPLOYMENT.md` for detailed instructions!

