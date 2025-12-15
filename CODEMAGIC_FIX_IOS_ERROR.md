# Fix: Codemagic iOS Build Error

## Problem
Build fails with: "Cannot initialize iOS project, no schemes available for Runner.xcodeproj"

## Cause
Codemagic is trying to build for iOS, but your project only needs Android.

---

## Solution: Disable iOS, Enable Android Only

### In Codemagic Workflow Editor:

1. **Go to "Build for platforms" section**
   - Look for checkboxes for platforms

2. **Uncheck iOS:**
   - ❌ **iOS** (uncheck this)

3. **Check Android:**
   - ✅ **Android** (make sure this is checked)

---

## Alternative: Use codemagic.yaml

If you can't find the platform checkboxes, create/update `codemagic.yaml`:

```yaml
workflows:
  android-workflow:
    name: Android Release Build
    max_build_duration: 60
    instance_type: linux_x2
    environment:
      flutter: stable
      groups:
        - github_credentials
    scripts:
      - name: Get Flutter packages
        script: flutter pub get
      - name: Build APK
        script: flutter build apk --release --split-per-abi
    artifacts:
      - build/**/outputs/**/*.apk
    publishing:
      email:
        recipients:
          - your-email@example.com
```

**Key changes:**
- `instance_type: linux_x2` (Linux for Android, not Mac for iOS)
- Only Android build commands

---

## Quick Fix Steps

1. **In Workflow Editor:**
   - Find **"Build for platforms"**
   - Uncheck **iOS** ❌
   - Check **Android** ✅
   - Click **Save**

2. **Start new build**
   - Build should now only target Android
   - Should complete successfully in ~10 minutes

---

**Your APK will build successfully once iOS is disabled!** 🚀
