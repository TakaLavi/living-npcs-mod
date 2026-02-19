# 🚀 HOW TO BUILD — No Gradle Install Needed!

Build your Living NPCs mod for FREE using GitHub Actions.
Every push automatically compiles it and gives you a downloadable `.jar`.

---

## ✅ STEP-BY-STEP GUIDE

---

### STEP 1 — Create a free GitHub account
Go to https://github.com and sign up (it's free).

---

### STEP 2 — Create a new repository

1. Click the **➕ New** button (top right on GitHub)
2. Repository name: `living-npcs-mod`
3. Set it to **Private** (so your API key stays safe)
4. Click **Create repository**

---

### STEP 3 — Upload the mod files

On your new empty repository page, click **"uploading an existing file"**

Drag and drop ALL these files/folders from the zip:
```
📁 .github/
📁 gradle/
📁 src/
📄 build.gradle
📄 gradle.properties
📄 gradlew
📄 gradlew.bat
📄 settings.gradle
```

Then scroll down and click **"Commit changes"**

---

### STEP 4 — Watch it build automatically!

1. Click the **"Actions"** tab at the top of your repository
2. You'll see **"Build Living NPCs Mod"** running (yellow circle = in progress)
3. Wait about **3-5 minutes** for the first build (later builds are ~1 min thanks to cache)
4. Green checkmark ✅ = success!

---

### STEP 5 — Download your JAR

1. Click on the completed build run
2. Scroll to the bottom of the page
3. Under **"Artifacts"** section, click **"living-npcs-mod-jar"**
4. It downloads as a zip — extract it to get `living-npcs-1.0.0.jar`

---

### STEP 6 — Install the mod

1. Copy `living-npcs-1.0.0.jar` to your `.minecraft/mods/` folder
2. Make sure you have **Fabric Loader** and **Fabric API** installed
3. Launch Minecraft 1.21.1 with Fabric profile
4. Right-click any villager — they now speak with AI! 🎉

---

## 🔄 HOW TO UPDATE THE MOD

Whenever you change any `.java` file on GitHub:
1. Edit the file directly on GitHub (click the pencil icon ✏️)
2. Click **"Commit changes"**
3. GitHub Actions automatically rebuilds — new JAR ready in ~1 minute!

---

## ❓ TROUBLESHOOTING

**Build failed (red ✗)?**
- Click on the failed run → click the "Build with Gradle" step → read the error
- Most common issue: Java compilation error in a `.java` file

**Can't find the Artifacts section?**
- The build must be GREEN (successful) for artifacts to appear
- Scroll all the way to the bottom of the build page

**Mod not loading in Minecraft?**
- Make sure Fabric API is installed (separate mod from Fabric Loader)
- Check `.minecraft/logs/latest.log` for errors

---

## 💡 PRO TIPS

- GitHub Actions gives you **2,000 free minutes/month** — more than enough
- Each build takes ~3 minutes, so you get ~600 free builds per month
- Artifacts are kept for **30 days** automatically
- You can trigger a build manually: Actions tab → Build workflow → "Run workflow" button
