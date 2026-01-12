# 🛸 Antigravity Zero Template

>> **AI-первый шаблон для быстрого старта проектов**  
> *v2.0 | Zero-coder friendly | Spec-first Workflow*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Made for AI](https://img.shields.io/badge/Made%20for-AI%20Agents-blueviolet)](https://github.com/kisslex2013-alt/antigravity-zero-template)

[English](#-english) | [Русский](#-русский)

---

## 🇬🇧 English

### 🎯 What Problem Does This Solve?

Starting a new project with AI assistants (Gemini, Claude, Copilot) often means:
- ❌ AI doesn't understand your project structure
- ❌ Repetitive explanations every session
- ❌ Inconsistent code style and approaches
- ❌ No memory between conversations

**Antigravity Zero Template** solves this by providing a pre-configured "AI brain" that:
- ✅ Gives AI persistent context about your project
- ✅ Enforces consistent rules and patterns
- ✅ Enables specialized AI personas for different tasks
- ✅ Provides ready-to-use workflows

### 🔄 How It Works

```mermaid
graph LR
    A[You] -->|"Add feature X"| B[AI Agent]
    B -->|Reads| C[.antigravity/rules.md]
    B -->|Uses| D[Personas & Skills]
    B -->|Creates| E[artifacts/plan.md]
    E -->|Executes| F[Your Code]
    F -->|Updates| G[changelog.md]
```

### 📊 Template vs No Template

| Aspect | Without Template | With Antigravity |
|--------|-----------------|------------------|
| **Setup time** | 30+ min | 2 min |
| **AI context** | Lost each session | Persistent |
| **Code style** | Inconsistent | Enforced rules |
| **Security** | Hope for the best | Built-in checks |
| **Documentation** | Often forgotten | Auto-generated |

### ✨ Features

| Feature | Description |
|---------|-------------|
| 🤖 **AI Brain** | `.antigravity/` — rules, **19 personas**, skills |
| 🔧 **Workflows** | **8 workflows:** spec, draft, simplify, verify, pipeline, brainstorm, compare, context |
| 🔄 **Spec-first** | Complete 4-phase development: Spec → Draft → Simplify → Verify |
| 📄 **Templates** | Ready spec templates with examples for zero-coder |
| 📜 **Automation** | `setup.ps1`, `verify.ps1` scripts |
| 🔌 **MCP Ready** | Smart Coding MCP integration guide |
| 🎯 **Zero-coder** | Simple language, structured responses, step-by-step guides |

### 🎭 AI Personas

Switch AI "personality" for different tasks:

**Phase-Specific (Spec-first Workflow):**
```
📋 Spec Analyst        → Detailed requirements, asks questions
⚡ Rapid Prototyper    → Fast working prototypes, speed > beauty
🧹 Code Simplifier     → Clean code, refactoring, readability
🔬 Test Engineer       → Automated tests, bug detection
```

**General Purpose:**
```
🕵️ Debugger    → Thorough bug hunting, requires logs
🏗️ Architect   → Scalable system design
👨‍🏫 Mentor      → Explains everything simply
🎨 UI/UX       → Focus on interface beauty
🛡️ Security    → Finds vulnerabilities
📝 Documenter  → Writes clear docs
⚡ Optimizer   → Performance tuning
🧪 Tester      → Test-first approach
...and 11 more!
```

### 🔄 Spec-first Workflow (NEW in v2.0)

Complete 4-phase development cycle inspired by Boris Cherny's methodology:

```
Spec → Draft → Simplify → Verify
 📋      ⚡       🧹         🔬
```

**Quick Commands:**
```bash
/spec @idea.md          # Detailed specification through interview
/draft @specs/file.md   # Fast working prototype
/simplify @src/file.js  # Improve code quality
/verify @src/file.js    # Automated testing
/pipeline [feature]     # Complete cycle: all 4 phases automatically

# Bonus workflows:
/brainstorm [task]      # 3 solution variants
/compare A vs B         # Compare approaches
/context                # Show project status
```

**Benefits:**
- 📋 **Better Planning** - Detailed specs reduce rework
- ⚡ **Faster Prototyping** - Working code in minutes
- 🧹 **Cleaner Code** - Mandatory refactoring phase  
- 🔬 **Higher Quality** - Automated testing for every feature
- 🎯 **Zero-coder Friendly** - Step-by-step with examples

### 🚀 Quick Start

```bash
# 1. Use this template (click button above)
# 2. Clone your new repo
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git

# 3. Initialize
cd YOUR_REPO
.\scripts\setup.ps1

# 4. Start coding with AI!
```

### 📁 Project Structure

```
├── .agent/workflows/    # AI workflows (8 workflows)
│   ├── spec.md          # Specification interview
│   ├── draft.md         # ⚡ NEW: Fast prototyping
│   ├── simplify.md      # 🧹 NEW: Code refactoring
│   ├── verify.md        # 🔬 NEW: Automated testing
│   ├── pipeline.md      # 🔄 NEW: Full 4-phase cycle
│   ├── brainstorm.md    # Creative ideation
│   ├── compare.md       # 📊 NEW: Compare approaches  
│   └── context.md       # 📍 NEW: Project status
├── .antigravity/        # 🧠 AI brain
│   ├── rules.md         # Core rules & security
│   ├── personas.md      # 19 AI personas (15 + 4 phase-specific)
│   ├── skills/          # Extended capabilities
│   │   ├── context-engineering.md
│   │   ├── task-hierarchy.md
│   │   └── phase-switching.md  # ✨ NEW: Auto persona switch
│   └── docs/            # AI documentation
├── templates/           # ✨ NEW: Specification templates
│   ├── spec-template.md        # Zero-coder friendly template
│   └── spec-example-like-button.md  # Filled example
├── artifacts/           # Session artifacts
│   ├── task.md          # Current tasks
│   ├── plan.md          # Implementation plan
│   └── walkthrough.md   # Work report
├── scripts/             # Automation
│   ├── setup.ps1
│   └── verify.ps1
├── src/                 # Your code here!
└── GUIDE.md             # 📖 Full usage guide (updated with phases)
```

### 📖 Documentation

- **[GUIDE.md](GUIDE.md)** — Complete usage guide (zero-coder friendly)
- **[CHANGELOG.md](CHANGELOG.md)** — Version history and changes
- **[ARCHITECTURE.md](ARCHITECTURE.md)** — System architecture
- **[docs/mcp-setup.md](docs/mcp-setup.md)** — MCP server setup

---

## 🇷🇺 Русский

### 🎯 Какую проблему решает?

При работе с AI-ассистентами (Gemini, Claude, Copilot) часто возникают проблемы:
- ❌ AI не понимает структуру вашего проекта
- ❌ Приходится объяснять одно и то же каждую сессию
- ❌ Непоследовательный стиль кода
- ❌ Нет памяти между разговорами

**Antigravity Zero Template** решает это, предоставляя "мозг AI":
- ✅ AI получает постоянный контекст о проекте
- ✅ Единые правила и паттерны
- ✅ Специализированные персоны для разных задач
- ✅ Готовые workflows

### 🔄 Как это работает

```mermaid
graph LR
    A[Вы] -->|Добавь фичу X| B[AI Агент]
    B -->|Читает| C[.antigravity/rules.md]
    B -->|Использует| D[Персоны и навыки]
    B -->|Создаёт| E[artifacts/plan.md]
    E -->|Реализует| F[Ваш код]
    F -->|Обновляет| G[changelog.md]
```

### 📊 С шаблоном vs Без

| Аспект | Без шаблона | С Antigravity |
|--------|-------------|---------------|
| **Время настройки** | 30+ мин | 2 мин |
| **Контекст AI** | Теряется | Сохраняется |
| **Стиль кода** | Разный | Единые правила |
| **Безопасность** | Как повезёт | Встроенные проверки |
| **Документация** | Забывается | Авто-генерация |

### ✨ Возможности

| Фича | Описание |
|------|----------|
| 🤖 **AI Brain** | `.antigravity/` — правила, **19 персон**, навыки |
| 🔧 **Workflows** | **8 workflows:** spec, draft, simplify, verify, pipeline, brainstorm, compare, context |
| 🔄 **Spec-first** | Полный 4-фазный цикл: Spec → Draft → Simplify → Verify |
| 📄 **Шаблоны** | Готовые шаблоны спецификаций с примерами для zero-coder |
| 📜 **Автоматизация** | `setup.ps1`, `verify.ps1` скрипты |
| 🔌 **MCP Ready** | Инструкция по Smart Coding MCP |
| 🎯 **Zero-coder** | Простой язык, пошаговые руководства, примеры |

### 🎭 AI Персоны

Переключайте "характер" AI для разных задач:

**Фазовые персоны (Spec-first Workflow):**
```
📋 Spec Analyst        → Детальные требования, задаёт вопросы
⚡ Rapid Prototyper    → Быстрые прототипы, скорость > красота
🧹 Code Simplifier     → Чистый код, рефакторинг, читаемость
🔬 Test Engineer       → Автоматические тесты, поиск багов
```

**Универсальные персоны:**
```
🕵️ Debugger    → Дотошный поиск ошибок
🏗️ Architect   → Масштабируемые системы  
👨‍🏫 Mentor      → Объяснения простым языком
🎨 UI/UX       → Фокус на интерфейсе
🛡️ Security    → Поиск уязвимостей
📝 Documenter  → Понятная документация
⚡ Optimizer   → Оптимизация производительности
🧪 Tester      → Test-first подход
...и ещё 11 ролей!
```

### 🔄 Spec-first Workflow (НОВОЕ в v2.0)

Полный 4-фазный цикл разработки по методологии Boris Cherny:

```
Spec → Draft → Simplify → Verify
 📋      ⚡       🧹         🔬
```

**Быстрые команды:**
```bash
/spec @idea.md          # Детальная спецификация через интервью
/draft @specs/file.md   # Быстрый рабочий прототип
/simplify @src/file.js  # Улучшение качества кода
/verify @src/file.js    # Автоматическое тестирование
/pipeline [фича]        # Полный цикл: все 4 фазы автоматически

# Бонусные workflows:
/brainstorm [задача]    # 3 варианта решения
/compare A vs B         # Сравнение подходов
/context                # Текущее состояние проекта
```

**Преимущества:**
- 📋 **Лучшее планирование** - Детальные спеки снижают переделки
- ⚡ **Быстрое прототипирование** - Рабочий код за минуты
- 🧹 **Чистый код** - Обязательная фаза рефакторинга
- 🔬 **Высокое качество** - Автоматические тесты для каждой фичи
- 🎯 **Zero-coder Friendly** - Пошаговые инструкции с примерами

### 🔧 Workflows

```bash
/spec @file.md     # Превратить идею в детальную спецификацию
/brainstorm        # Сгенерировать 3 варианта решения
```

**Пример `/spec`:**
```
# БЫЛО:
Хочу систему уведомлений

# СТАЛО (после интервью с AI):
## Система уведомлений
### UI/UX
- Позиция: правый верхний угол
- Анимация: slide + fade
- Автозакрытие: 5 сек
### Типы: success, error, warning, info
### API: notify(type, message, options)
...и ещё 50 строк детальной спецификации
```

### 🚀 Быстрый старт

```bash
# 1. Нажмите "Use this template"
# 2. Клонируйте
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git

# 3. Инициализация
cd YOUR_REPO
.\scripts\setup.ps1

# 4. Работайте с AI!
```

---

## 🤝 Contributing

PRs are welcome! Please read the contribution guidelines first.

## 📝 License

MIT © 2026

---

<p align="center">
  <b>Made with 🛸 by Antigravity Zero</b><br>
  <i>Escape the gravity of boilerplate</i>
</p>
