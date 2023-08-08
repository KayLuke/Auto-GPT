# Auto-GPT-Turbo: [Draft readme]

Turbo is an Auto-GPT fork created to test some of the more experimental features that may (or may not) make it into Auto-GPT. 

It builds on the efforts of fellow Auto-GPT maintainers and features geared toward enhancing Auto-GPT's overall performance. Every addition will be rigorously benchmarked and only persisted if it makes Auto-GPT more performant. Turbo uses Auto-GPT Benchmarks for benchmarking.

## Releases:

Auto-GPT Turbo will be pegged to the latest Auto-GPT stable version (currently v0.4.7) and intends to be generally stable (but still experimental, so YMMV). Similarly, the plan is to PR any features that show traction back to the main Auto-GPT project, so please keep the testing and feedback coming! 

## Main Features

On top of Auto-GPT's capabilities (link), Turbo adds:

#. **Turbo "Expert" Personas (Status: Beta)**
   Auto-GPT's lofty goal, and its design, is to be a generalist AI assistant. Similar to GPT-4 and other generalist LLMs, it can take on many different "personas" depending on the user's instructions and the current task. While seasoned
   prompt engineers enjoy coaxing out every unique personality trait from the LLM; most of us want to Get S*@T Done. 

   Building on my "Auto-GPT wins" side project, the Personas feature lets you load various presets that affect how Turbo behaves. Choose a more analytical "professor" for research tasks or a Senior Engineer from Nasa for coding tasks.
   You can load a whole Persona with its preset name, role, and goals or enter your tasks while keeping some or all of the underlying preset behavior.

   **Available personas:**
   - turbo: the default for Auto-GPT Turbo
   - codezilla.planner: fine-tuned for doing the "planning" half of a coding project.
   - codezilla.engineer: fine-tuned for turning the "plan" into a final software application.

   **Coming soon:**
   - More personas, with more granularity
   - Persona auto-selection based on the current task
   - Persona switching per goal within the same task

#. **Turbo Orchestrator: Job routing for (non-Auto-GPT) Agents (Status: Pre-Alpha)**
   Several impressive AI agent projects have sprung up over the past few months. While we hope to build the best AI agent in Auto-GPT, it's clear that there will be more than one agent in the future, each with different capabilities.

   Turbo Orchestrator routes jobs to the AI agent most capable of executing them, based on Auto-GPT Benchmark data. It will also allow you to route your task to multiple Agents, and evaluate and rank their output.

   Other planned features include turning task results into Auto-GPT Benchmark challenges.

   **Supported agents:**
   Orchestrator will use any agent supported by Auto-GPT Benchmarks, including: Auto-GPT, Beebot, BabyAPI, GPT-engineer, MiniAGI, SuperAGI and more.

 #. **Aggregate commands:**
    Turbo can determine when multiple commands can be chained and execute the whole batch in one cycle. This eliminates useless, token-wasting network i/o, which is the slowest part of the task fulfillment process for SaaS-hosted models like
    Open AI.

 #. **One-shot responses & faster decisions:**
   The default Auto-GPT agent is biased for accuracy and often searches for things it knows. The default 'turbo' agent profile tries to coax GPT-4 to leverage its knowledge more, and deliver more one-shot responses. It also tries to
   reduce the LLM's tendency to double-check itself without.
   
## Other Features

#. **Helicone support:**
   Enables LLM query caching and monitoring of LLM latency, costs, and benchmarks.

#. **Profiler support:**
   Configurable Wall & CPU profiling of benchmark runs and LLM cycles.

   To be continued...
