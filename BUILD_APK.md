# Quick Codemagic Setup (No YAML Needed)

## Use Workflow Editor Instead

Since the yaml file isn't being detected, use Codemagic's **Workflow Editor** (UI mode):

### 1. Open Your App in Codemagic
- Go to: https://codemagic.io/apps
- Click on your `Queshield` app

### 2. Switch to Workflow Editor
- Click **"Workflow Editor"** tab (not "codemagic.yaml")
- This lets you configure everything in the UI

### 3. Add Build Scripts
Click **"+ Add script"** twice and add:

**Script 1:**
```bash
flutter pub get
```

**Script 2:**
```bash
flutter build apk --release --split-per-abi
```

### 4. Configure Artifacts
In the **Artifacts** section, add:
```
build/**/outputs/**/*.apk
```

### 5. Set Environment
- **Flutter version:** `stable`
- **Build triggers:** Enable "Trigger on push to main"

### 6. Start Build
- Click **"Save"**
- Click **"Start new build"**
- Select branch: **main**
- Wait ~10 minutes

### 7. Download APK
Once build completes:
- Go to **"Artifacts"** tab
- Download: `app-arm64-v8a-release.apk`

---

**That's it!** No yaml file needed when using Workflow Editor mode. 🚀
