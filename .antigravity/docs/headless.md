# Headless mode

Headless mode allows you to run Gemini CLI programmatically from command line
scripts and automation tools without any interactive UI. This is ideal for
scripting, automation, CI/CD pipelines, and building AI-powered tools.

- [Headless Mode](#headless-mode)
  - [Overview](#overview)
  - [Basic Usage](#basic-usage)
    - [Direct Prompts](#direct-prompts)
    - [Stdin Input](#stdin-input)
    - [Combining with File Input](#combining-with-file-input)
  - [Output Formats](#output-formats)
    - [Text Output (Default)](#text-output-default)
    - [JSON Output](#json-output)
      - [Response Schema](#response-schema)
      - [Example Usage](#example-usage)
    - [Streaming JSON Output](#streaming-json-output)
      - [When to Use Streaming JSON](#when-to-use-streaming-json)
      - [Event Types](#event-types)
      - [Basic Usage](#basic-usage)
      - [Example Output](#example-output)
      - [Processing Stream Events](#processing-stream-events)
      - [Real-World Examples](#real-world-examples)
    - [File Redirection](#file-redirection)
  - [Configuration Options](#configuration-options)
  - [Examples](#examples)
    - [Code review](#code-review)
    - [Generate commit messages](#generate-commit-messages)
    - [API documentation](#api-documentation)
    - [Batch code analysis](#batch-code-analysis)
    - [Code review](#code-review-1)
    - [Log analysis](#log-analysis)
    - [Release notes generation](#release-notes-generation)
    - [Model and tool usage tracking](#model-and-tool-usage-tracking)
  - [Resources](#resources)

## Overview

The headless mode provides a headless interface to Gemini CLI that:

- Accepts prompts via command line arguments or stdin
- Returns structured output (text or JSON)
- Supports file redirection and piping
- Enables automation and scripting workflows
- Provides consistent exit codes for error handling

## Basic usage

### Direct prompts
Use the `--prompt` (or `-p`) flag to run in headless mode:

```bash
gemini --prompt "What is machine learning?"
```

### Stdin input
Pipe input to Gemini CLI from your terminal:

```bash
echo "Explain this code" | gemini
```

### Combining with file input
Read from files and process with Gemini:

```bash
cat README.md | gemini --prompt "Summarize this documentation"
```

## Output formats

### Text output (default)
Standard human-readable output:

```bash
gemini -p "What is the capital of France?"
```

Response format:

```
The capital of France is Paris.
```

### JSON output
Returns structured data including response, statistics, and metadata. This
format is ideal for programmatic processing and automation scripts.

#### Response schema

The JSON output follows this high-level structure:

```json
{
  "response": "string", // The main AI-generated content answering your prompt
  "stats": {
    // Usage metrics and performance data
    "models": {
      // Per-model API and token usage statistics
      "[model-name]": {
        "api": {
          /* request counts, errors, latency */
        },
        "tokens": {
          /* prompt, response, cached, total counts */
        }
      }
    },
    "tools": {
      // Tool execution statistics
      "totalCalls": "number",
      "totalSuccess": "number",
      "totalFail": "number",
      "totalDurationMs": "number",
      "totalDecisions": {
        /* accept, reject, modify, auto_accept counts */
      },
      "byName": {
        /* per-tool detailed stats */
      }
    },
    "files": {
      // File modification statistics
      "totalLinesAdded": "number",
      "totalLinesRemoved": "number"
    }
  },
  "error": {
    // Present only when an error occurred
    "type": "string", // Error type (e.g., "ApiError", "AuthError")
    "message": "string", // Human-readable error description
    "code": "number" // Optional error code
  }
}
```

#### Example usage

```bash
gemini -p "What is the capital of France?" --output-format json
```

### Streaming JSON output
Returns real-time events as newline-delimited JSON (JSONL). Each significant
action (initialization, messages, tool calls, results) emits immediately as it
occurs. This format is ideal for monitoring long-running operations, building
UIs with live progress, and creating automation pipelines that react to events.

#### When to use streaming JSON

Use `--output-format stream-json` when you need:

- **Real-time progress monitoring** - See tool calls and responses as they
  happen
- **Event-driven automation** - React to specific events (e.g., tool failures)
- **Live UI updates** - Build interfaces showing AI agent activity in real-time
- **Detailed execution logs** - Capture complete interaction history with
  timestamps
- **Pipeline integration** - Stream events to logging/monitoring systems

#### Event types

The streaming format emits 6 event types:

1. **`init`** - Session starts (includes session_id, model)
2. **`message`** - User prompts and assistant responses
3. **`tool_use`** - Tool call requests with parameters
4. **`tool_result`** - Tool execution results (success/error)
5. **`error`** - Non-fatal errors and warnings
6. **`result`** - Final session outcome with aggregated stats

#### Basic usage

```bash
# Stream events to console
gemini --output-format stream-json --prompt "What is 2+2?"

# Save event stream to file
gemini --output-format stream-json --prompt "Analyze this code" > events.jsonl

# Parse with jq
gemini --output-format stream-json --prompt "List files" | jq -r '.type'
```

### File redirection
Save output to files or pipe to other commands:

```bash
# Save to file
gemini -p "Explain Docker" > docker-explanation.txt
gemini -p "Explain Docker" --output-format json > docker-explanation.json

# Append to file
gemini -p "Add more details" >> docker-explanation.txt

# Pipe to other tools
gemini -p "What is Kubernetes?" --output-format json | jq '.response'
gemini -p "Explain microservices" | wc -w
gemini -p "List programming languages" | grep -i "python"
```

## Configuration options
Key command-line options for headless usage:

| Option                  | Description                        | Example                                            |
| ----------------------- | ---------------------------------- | -------------------------------------------------- |
| `--prompt`, `-p`        | Run in headless mode               | `gemini -p "query"`                                |
| `--output-format`       | Specify output format (text, json) | `gemini -p "query" --output-format json`           |
| `--model`, `-m`         | Specify the Gemini model           | `gemini -p "query" -m gemini-2.5-flash`            |
| `--debug`, `-d`         | Enable debug mode                  | `gemini -p "query" --debug`                        |
| `--include-directories` | Include additional directories     | `gemini -p "query" --include-directories src,docs` |
| `--yolo`, `-y`          | Auto-approve all actions           | `gemini -p "query" --yolo`                         |
| `--approval-mode`       | Set approval mode                  | `gemini -p "query" --approval-mode auto_edit`      |
