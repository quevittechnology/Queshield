# Build QueShield APK with Codemagic

## Quick Start (5 minutes)

### 1. Open Codemagic
Visit: https://codemagic.io/apps

### 2. Add Your Repository
- Click **"Add application"**
- Select: `quevittechnology/Queshield`
- Click **"Finish: Add application"**

### 3. Configure Build (Workflow Editor)
Click **"Set up build"** or **"Workflow Editor"**, then add:

**Build Scripts:**
```bash
# Script 1: Get packages
flutter pub get

# Script 2: Build APK
flutter build apk --release --split-per-abi
```

**Artifacts:**
```
build/**/outputs/**/*.apk
```

**Settings:**
- Flutter: `stable`
- Branch: `main`
- Trigger on push: ✅ Enabled

### 4. Start Build
- Click **"Save"**
- Click **"Start new build"**
- Wait ~10 minutes

### 5. Download APK
- Go to **"Artifacts"** tab
- Download: `app-arm64-v8a-release.apk`

---

## Troubleshooting

**Can't see repository?**
1. Go to: https://github.com/settings/installations
2. Find "Codemagic CI/CD" → Configure
3. Grant access to `Queshield` repository

**Build fails?**
Check build logs for errors and fix the specific issue.

---

## That's it!
Your APK will be ready in ~10 minutes. Install it on your Android device and test! 🚀
