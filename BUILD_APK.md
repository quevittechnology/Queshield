# How to Configure Codemagic Build (Step-by-Step)

## 1. Open Codemagic
- Go to: **https://codemagic.io/apps**
- Sign in with GitHub
- Click **"Add application"**
- Select **"Flutter App"**
- Choose repository: **`quevittechnology/Queshield`**
- Click **"Finish: Add application"**

---

## 2. Switch to Workflow Editor
- In your app, click the **"Workflow Editor"** tab at the top
- (NOT the "codemagic.yaml" tab)

---

## 3. Add Build Scripts

### Find the "Build" Section
Scroll down to the **"Build"** section in Workflow Editor

### Click "+ Add script" Button
You'll see a button that says **"+ Add script"**

### Add Script 1:
1. Click **"+ Add script"**
2. **Script name:** `Get packages`
3. **Script:** 
   ```bash
   flutter pub get
   ```
4. Click **"Add"**

### Add Script 2:
1. Click **"+ Add script"** again
2. **Script name:** `Build APK`
3. **Script:**
   ```bash
   flutter build apk --release --split-per-abi
   ```
4. Click **"Add"**

---

## 4. Set Artifacts

### Find the "Artifacts" Section
Scroll down to the **"Artifacts"** section

### Add Artifact Pattern:
1. Click **"+ Add artifact"** or find the text field
2. Enter:
   ```
   build/**/outputs/**/*.apk
   ```
3. Press Enter or click Add

---

## 5. Configure Environment (Optional but Recommended)

### Flutter Version:
- Set to: **`stable`** or **`3.38.5`**

### Build Triggers:
- Enable: **"Trigger on push to main"** ✅

---

## 6. Save and Build

1. Click **"Save"** button (top right)
2. Click **"Start new build"**
3. Select branch: **`main`**
4. Click **"Start build"**

---

## 7. Monitor Build
- Watch the build logs in real-time
- Build takes ~10 minutes
- Check for any errors

---

## 8. Download APK

Once build succeeds:
1. Go to **"Artifacts"** tab
2. Download files:
   - `app-arm64-v8a-release.apk` ← **Use this for most phones**
   - `app-armeabi-v7a-release.apk` (older phones)
   - `app-x86_64-release.apk` (emulators)

---

## Visual Guide

```
Workflow Editor
├── Environment
│   └── Flutter version: stable
├── Build scripts
│   ├── Script 1: flutter pub get
│   └── Script 2: flutter build apk --release --split-per-abi
├── Artifacts
│   └── build/**/outputs/**/*.apk
└── Build triggers
    └── ✅ Trigger on push to main
```

---

## Troubleshooting

**Can't find "+ Add script" button?**
- Make sure you're in **"Workflow Editor"** tab, not "codemagic.yaml"
- Scroll down to the "Build" section

**Build fails?**
- Check build logs for specific error
- Most common: dependency issues (usually auto-resolved by Codemagic)

---

**That's it!** Your APK will be ready in ~10 minutes! 🚀
