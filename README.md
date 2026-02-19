# 🏰 Living NPCs Mod — Minecraft Fabric 1.21.1

> **AI-Powered Villagers** with persistent personalities, memories, relationships, and dynamic economies — powered by OpenRouter AI (free models).

---

## 📋 Features

- **🧠 AI Personalities** — Each villager gets unique procedurally-generated traits (Brave/Cowardly, Greedy/Generous, etc.) that persist across sessions
- **💭 Episodic Memory** — Villagers remember your past interactions and reference them in conversation
- **😊 Emotional States** — Mood affects trading prices, dialogue tone, and behavior
- **❤️ Reputation System** — Your actions affect each villager's opinion of you (-100 to +100)
- **🤝 Relationships** — Villagers form friendships, rivalries, and romances with each other
- **🎯 Life Goals** — Each villager has 1-3 personal goals they're working toward
- **💬 Natural Language Chat** — Right-click any villager to open the AI chat interface
- **💰 Dynamic Economy** — Trade prices fluctuate based on supply/demand, mood, and reputation
- **📜 Procedural Quests** — AI generates unique quests based on villager personality and needs
- **🔒 Persistent Data** — All AI state saved to world NBT data

---

## 🚀 Installation

### Requirements
- **Minecraft** 1.21.1
- **Fabric Loader** 0.15.11+
- **Fabric API** 0.102.0+

### Steps

1. Download `living-npcs-1.0.0.jar` from releases
2. Place in your `.minecraft/mods/` folder
3. Launch Minecraft with Fabric

The mod works **out of the box** using the included OpenRouter API key with free AI models.

---

## 🤖 AI Model

This mod uses **[OpenRouter.ai](https://openrouter.ai)** to connect to free AI models:

- **Default**: `meta-llama/llama-3.1-8b-instruct:free` — Fast, smart, free tier
- **Fallback**: `mistralai/mistral-7b-instruct:free`

No API key required — the mod ships with a key preconfigured.

---

## 🎮 How to Use

| Action | Result |
|--------|--------|
| **Right-click** a villager | Opens the AI chat screen |
| **Hold 5 emeralds + right-click** | Gift them (+5 reputation) |
| **Attack** a villager | -25 reputation |
| **Complete quests** | +10 reputation |

### Chat Modes
- **💬 Chat** — Normal conversation
- **💰 Trade** — Negotiate prices, barter
- **📜 Quest** — Ask about tasks you can do for them
- **🗣 Gossip** — Hear village news and rumors

---

## 🏗️ Building from Source

```bash
git clone https://github.com/livingnpcs/living-npcs-mod
cd living-npcs-mod
./gradlew build
```

Output JAR: `build/libs/living-npcs-1.0.0.jar`

### Requirements for building
- JDK 21
- Internet connection (Gradle downloads dependencies)

---

## 📁 Project Structure

```
src/main/java/com/livingnpcs/
├── LivingNPCsMod.java              ← Main entrypoint
├── ai/
│   ├── VillagerAI.java             ← Core AI brain
│   ├── OpenRouterService.java      ← Free AI API integration
│   ├── Personality.java            ← 8 personality traits
│   ├── PersonalityTrait.java       ← Trait enum
│   ├── EmotionalState.java         ← Mood system
│   ├── MemoryBank.java             ← Episodic memory (50 memories)
│   ├── GoalStack.java              ← Life goals
│   └── VillagerNameGenerator.java  ← Procedural names
├── client/
│   ├── LivingNPCsClient.java       ← Client entrypoint
│   └── gui/
│       └── NpcChatScreen.java      ← Full Minecraft-style chat UI
├── economy/
│   └── VillageEconomy.java         ← Dynamic market
├── event/
│   └── VillagerEventHandler.java   ← Right-click, attack handlers
├── mixin/
│   ├── VillagerEntityMixin.java     ← Attaches AI to villagers
│   └── VillagerEntityAIMixin.java  ← Trade price hooks
├── network/
│   └── LivingNPCsPackets.java      ← Client↔Server packets
├── quest/
│   └── QuestGenerator.java         ← Procedural quest system
├── registry/
│   └── LivingNPCsComponents.java   ← Component registration
├── social/
│   ├── RelationshipMap.java        ← Villager relationships
│   └── ReputationSystem.java       ← Player reputation
├── util/
│   ├── VillagerAIAccessor.java     ← Mixin accessor interface
│   └── VillagerNBTHelper.java      ← NBT utilities
└── world/
    └── VillageWorldData.java       ← Village-level state
```

---

## ⚙️ Configuration

Edit `LivingNPCsMod.java` to change the AI model:

```java
// Free models available on OpenRouter:
public static final String AI_MODEL = "meta-llama/llama-3.1-8b-instruct:free";
// OR:
// "mistralai/mistral-7b-instruct:free"
// "google/gemma-2-9b-it:free"
// "qwen/qwen-2-7b-instruct:free"
```

---

## 📜 License

MIT License — free to use, modify, and distribute.

---

## 🔮 Roadmap (v2.0)

- [ ] Village elections (every 30 in-game days)
- [ ] Faction system with joining mechanics
- [ ] Multi-villager group conversations
- [ ] Romance and marriage system
- [ ] Crime & justice system
- [ ] Community building projects
- [ ] Trade caravans between villages
- [ ] TTS voice lines
- [ ] Admin commands (`/npc inspect`, `/npc edit`)
