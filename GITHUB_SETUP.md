# GitHub Setup Guide - Elite Capital Realty

Follow these steps to push the local repository to GitHub.

## Prerequisites
- GitHub account (github.com)
- Git installed (already done ✅)
- SSH key configured (recommended) OR GitHub personal access token

---

## Option 1: SSH Setup (Recommended)

### Step 1: Create Repository on GitHub
1. Go to **github.com** and log in
2. Click **+** (top right) → **New repository**
3. Repository name: `elite-capital-realty`
4. Description: "Elite Capital Realty - GoHighLevel HTML blocks and pages"
5. **Public** (so you can share) or **Private** (if sensitive)
6. Do NOT initialize with README (we have one)
7. Click **Create repository**

### Step 2: Add Remote and Push
```bash
cd /Users/Scott/Documents/Claude/Projects/elite-capital-ghl-blocks

# Add GitHub as remote
git remote add origin git@github.com:YOUR_USERNAME/elite-capital-realty.git

# Verify remote added
git remote -v

# Push to GitHub
git branch -M main
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username.

---

## Option 2: HTTPS with Personal Access Token

### Step 1: Create Repository on GitHub
(Same as Option 1, steps 1-7)

### Step 2: Create Personal Access Token
1. GitHub → Settings → Developer settings → Personal access tokens
2. Click **Generate new token**
3. Name: `elite-capital-realty-push`
4. Select scopes: ✅ `repo` (full control)
5. Click **Generate token**
6. **Copy the token** (you won't see it again)

### Step 3: Add Remote and Push
```bash
cd /Users/Scott/Documents/Claude/Projects/elite-capital-ghl-blocks

# Add GitHub as remote (HTTPS)
git remote add origin https://github.com/YOUR_USERNAME/elite-capital-realty.git

# Push to GitHub (will ask for username and password/token)
git branch -M main
git push -u origin main

# When prompted:
# Username: YOUR_USERNAME
# Password: PASTE_YOUR_TOKEN_HERE
```

Replace `YOUR_USERNAME` with your GitHub username.

---

## Verify Push Was Successful

```bash
# Check remote
git remote -v

# Check branch
git branch -a

# You should see:
# origin/main
```

Or visit: `https://github.com/YOUR_USERNAME/elite-capital-realty`

---

## Automated Setup Script

Create a file `github-push.sh` and run it:

```bash
#!/bin/bash

# Configuration
USERNAME="YOUR_USERNAME"
REPO_NAME="elite-capital-realty"
EMAIL="scott@aiintellicallsolutions.com"

# Navigate to repo
cd /Users/Scott/Documents/Claude/Projects/elite-capital-ghl-blocks

# Configure git
git config user.email "$EMAIL"
git config user.name "Scott Lehr"

# Add remote
git remote add origin "git@github.com:$USERNAME/$REPO_NAME.git"

# Push
git branch -M main
git push -u origin main

echo "✅ Repository pushed to GitHub!"
echo "View at: https://github.com/$USERNAME/$REPO_NAME"
```

---

## Troubleshooting

### "fatal: remote origin already exists"
```bash
git remote remove origin
# Then run the add remote command again
```

### "Permission denied (publickey)"
- SSH key not configured
- Use HTTPS option instead
- Or setup SSH: `ssh-keygen -t ed25519 -C "scott@aiintellicallsolutions.com"`

### "Authentication failed"
- Check GitHub credentials
- Check personal access token has `repo` scope
- Token may have expired

---

## After Push: Collaboration & Tracking

Once on GitHub, you can:

✅ **Version Control** - Track all changes
✅ **Branching** - Create feature branches (dev, staging, etc.)
✅ **Collaboration** - Share repo with team
✅ **Backup** - Automatic backup on GitHub
✅ **CI/CD** - Setup automated tests/deployments
✅ **Issues** - Track bugs and feature requests
✅ **Pull Requests** - Code review workflow

---

## Next Steps

1. Create GitHub account if you don't have one
2. Follow Option 1 (SSH) or Option 2 (HTTPS)
3. Verify push successful
4. Share repo link: `https://github.com/YOUR_USERNAME/elite-capital-realty`

**Questions?** Ask and I'll help troubleshoot!
