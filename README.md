# Auto-GPT-Turbo: --- DRAFT DRAFT DRAFT ---

Turbo is an Auto-GPT fork. It's a testing ground for some of the more experimental features that may (or may not) make it into Auto-GPT. 

Building on the strong efforts of fellow Auto-GPT maintainers, Turbo adds performance-enhancing features, some of which are listed below. Each one will be rigorously benchmarked (using Auto-GPT Benchmarks) and only persisted if it makes Auto-GPT more performant.

## Releases Schedule

Auto-GPT Turbo will be pegged to the latest Auto-GPT stable version (currently v0.4.7) and intends to be generally stable but still experimental (YMMV). The plan is to PR any features showing traction to the main project, so please keep the testing and feedback coming! 

On top of Auto-GPT's capabilities (link), Turbo adds:

## Expert Personas (Beta)

> _Preset configs for specific tasks that work out-of-box._

- turbo - Auto-GPT Turbo's default persona
- codezilla.planner: fine-tuned for doing the "planning" half of a coding project.
- codezilla.engineer: fine-tuned for turning the "plan" into a final software application.
- More coming soon

The Personas feature lets you load various presets that affect how Auto-GPT Turbo behaves. Choose a more analytical "professor" for research tasks or a Senior Engineer from Nasa for coding tasks, or use Personas as a base for your own performance tuning.

**Roadmap: **
- Persona auto-selection based on the current task
- Persona switching per goal within the same task
- Ability to save the current config as a persona
  
## Orchestrator (Alpha)

> _Job routing to (non-Auto-GPT) Agents._

Several impressive AI agent projects exist today, each with unique capabilities. While we hope to build the best AI agent in Auto-GPT, we live in a multi-agent future. Turbo Orchestrator routes each job to the most suitable agents, based on Auto-GPT Benchmark data. Additionally, you can choose to send your task to multiple agents, and optionally evaluate and rate their performance.

Any agents supported by Auto-GPT Benchmarks will work with the orchestrator, including Auto-GPT, Beebot, BabyAPI, GPT-engineer, MiniAGI, SuperAGI, and more.

Planned orchestrator features include creating Benchmark challenges from task results and feeding the human eval back to Auto-GPT Benchmarks.

### Other Turbo Features

#### 1. Aggregate commands

- Turbo can determine when multiple commands can be chained and execute the whole batch in one cycle. This eliminates useless, token-wasting network i/o, which is the slowest part of the task fulfillment process for SaaS-hosted models like Open AI.

#### 2. One-shot responses

- The default Auto-GPT agent is biased for accuracy and often searches for things it knows. The default 'turbo' agent profile tries to coax GPT-4 to leverage its knowledge more, and deliver more one-shot responses. It also tries to reduce the LLM's tendency to double-check itself... (to be continued)
   
#### 3. Helicone support
- Enables LLM query caching and monitoring of LLM latency, costs, and benchmarks.

#### 4. Profiler support
- Turbo ships with configurable Wall & CPU profiling of benchmark runs and LLM cycles.

To be continued...
