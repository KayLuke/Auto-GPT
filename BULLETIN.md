# QUICK LINKS 🔗
# --------------
🌎 *Official Website*: https://agpt.co.
📖 *User Guide*: https://docs.agpt.co.
👩 *Contributors Wiki*: https://github.com/Significant-Gravitas/Auto-GPT/wiki/Contributing.

# v0.4.6 RELEASE HIGHLIGHTS [WIP]! 🚀
# -----------------------------
[TBD Intro]

Model defaults have changed!
- If you set SMART_LLM to "gpt-4", it will use "gpt-4-0314" instead of 
  "gpt-4-0613". This is due to this July 20, 2023 update from OpenAI: 
  https://openai.com/blog/function-calling-and-other-api-updates

  To revert to gpt-4-0613, set SMART_LLM to "gpt-4-0613" explicitly.

- FAST_LLM now defaults to gpt-3.5-turbo-16k to take advantage of the larger 
  context window.
  
  ⚠️ **BEWARE: This is twice as expensive as gpt-3.5-turbo.** ⚠️
  
  To revert to "gpt-3.5-turbo", set FAST_LLM to "gpt-3.5-turbo" explicitly.

Take a look at the Release Notes on Github for the full changelog! 
https://github.com/Significant-Gravitas/Auto-GPT/releases.
