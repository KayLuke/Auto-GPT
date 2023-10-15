# Hack of 

from ai-ticket
`sudo docker-compose up mockopenai`

`sudo docker-compose run  autogpt-turbo`

# Turbo: An Enhanced Auto-GTP v0.4.7 Fork

Turbo is a fork of Auto-GTP v0.4.7, offering the following improvements:

## Features

- **Cost and Speed**: GPT-4 support that's 66% cheaper and 2X faster than the original Auto-GPT v0.4.7.
- **Improved Code Generation**: The 'coder.v2' persona offers improved support for coding projects.
- **Multiple Personas**: Choose from specialized configurations tailored for specific tasks.
- **Multi-Agent Support**: Deploy additional agents to accomplish specific tasks.
- **Composability**: Configure multi-agent setups and custom personas easily.

## Compatibility
- **Optimized for**: `gpt-4-0314`
- **Variable Performance**: Results may differ when used with other GPT-4 models.
- **Contributions**: Pull Requests for optimization with other models are welcome.

## Installation and Setup
Git clone the Turbo repository, or use one of Auto-GPT's installation methods.

## Research Interests

This fork aims to make certain aspects of AutoGTP more composable, makign it easier to test various scenarios with Auto-GPT, focusing on:
- [Multi-persona prompting](https://www.prompthub.us/blog/exploring-multi-persona-prompting-for-better-outputs)
- Multi-agent configurations
- Memory extension techniques
- Auto-GPT as a conductor or orchestrator of other agents

## Performance Improvements

While GPT-4 offers superior performance compared to its predecessors, it comes at a higher cost and slower speed. Turbo optimizes various aspects of the interaction between the agent and the language model, delivering significant time and cost savings. Compared to Auto-GPT v0.4.7, Turbo can up up to 66% cheaper, and twice as fast.

## Coding with Turbo

Turbo aims to extend Auto-GPT's coding capabilities with optimized preset prompts, and  specialized agents. Coder.v2 provides further improvements in this area.

**Usage**: 
```bash
python -m autogpt --persona='coder.v2'
```

Check out the `examples` folder for sampel code outputs.

## Personas

Specialized configurations, called "personas," can be loaded to tailor Auto-GTP's behavior for specific tasks.

**Usage**:
```bash
python -m autogpt --persona=coder.v2
```

**Available Personas**:

- `coder.engineer`
- `coder.v2`
- `turbo (default)`

## Dolly: Multi-Agent Plugin

Turbo comes bundled with Dolly, a multi-agent plugin now upgraded with the ability to reference personas. [More Details](./core_plugins/Auto-GPT-Dolly-Plugin/README.md)
