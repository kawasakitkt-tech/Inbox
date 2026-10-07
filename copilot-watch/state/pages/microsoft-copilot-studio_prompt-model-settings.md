Change the model version and settings - Microsoft Copilot Studio | Microsoft Learn
Table of contents

Exit editor mode

Ask Learn

Ask Learn

Reading mode

Table of contents

Read in English

Add

Add to Plans

Edit

------------------------------------------------------------------------

Copy Markdown

Print

------------------------------------------------------------------------

Note

Access to this page requires authorization. You can try signing in or changing directories.

Access to this page requires authorization. You can try changing directories.

Change the model version and settings

Feedback

Summarize this article for me

In this article

Note

This article describes features used in agents or agent flows powered by the standard harness.

This article explains how to change the model version and settings in the prompt builder. The model version and settings can affect the performance and behavior of the generative AI model.

Model selection

You can change the model by selecting Model at the top of the prompt builder. The dropdown menu allows you to select from the generative AI models that generate answers to your custom prompt.

Using prompts in Power Apps or Power Automate consumes prompt builder credits, while using prompts in Copilot Studio consumes Copilot Credits. Learn more in Licensing and prompt builder credits in the AI Builder documentation.

Overview

The following table describes the different models available.

Models have different availability across regions and are periodically updated. Learn more in Prompt model availability by region and updates.

Note

-   GPT-4o mini and GPT-4o continue to be used in US government regions. These models follow licensing rules and offer functionalities comparable to GPT-4.1 mini and GPT-4.1, respectively.
-   Anthropic models are hosted outside Microsoft and are subject to Anthropic terms and data handling. Learn more in Choose an external model as the primary AI model.

  GPT model                                                          Licensing       Functionalities                                                            Category
  ------------------------------------------------------------------ --------------- -------------------------------------------------------------------------- ----------
  GPT-4.1 mini (default model)                                       Basic rate      Trained on data up to June 2024. Input up to 128K tokens.                  Mini
  GPT-4.1                                                            Standard rate   Trained on data up to June 2024. Context allowed up to 128K tokens.        General
  GPT-5 chat                                                         Standard rate   Trained on data up to September 2024. Context allowed up to 128K tokens.   General
  GPT-5 reasoning                                                    Premium rate    Trained on data up to September 2024. Context allowed up to 400K tokens.   Deep
  GPT-5.2 reasoning                                                  Premium rate    Trained on data up to October 2024. Context allowed up to 400K tokens.     Deep
  GPT-5.3 chat                                                       Standard rate   Managed model. Context allowed up to 128K tokens.                          General
  Claude Sonnet 4.6                                                  Standard rate   External model from Anthropic. Context allowed up to 200K tokens.          General
  Claude Opus 4.6                                                    Premium rate    External model from Anthropic. Context allowed up to 200K tokens.          Deep
  Grok 4.1 Fast (Non-reasoning) (see the following important note)   Standard rate   External model from xAI.                                                   General

Important

Microsoft's safety and responsible AI evaluations found Grok-4.1 Fast (Non-Reasoning) to be less aligned than other models evaluated resulting in (i) higher risks that the model will produce potentially harmful content and (ii) lower scores on safety and jailbreak benchmarks. Grok-4.1 Fast (Non-Reasoning) may be capable of producing explicit content, and may do so with a higher propensity than other models. Customers must comply with both the Microsoft Enterprise AI Services Code of Conduct and xAI's Enterprise Terms of Service, including its Acceptable Use Policy. Additionally, there may be categories of harm this model can produce that are not covered by Microsoft's content safety systems. Accordingly, as with all Experimental models, Grok-4.1 Fast (Non-Reasoning) is not recommended for production use and customers should review Limitations of experimental and preview models and conduct their own evaluations before choosing Grok-4.1 Fast (Non-Reasoning).

Context window and token usage

The model context window is a limit for each model call, enforced by the model provider on each individual call. A single Copilot Studio agent interaction (conversational turn) can trigger multiple calls, such as planner iterations, knowledge retrieval or generative answers, and tool summarization.

The total token usage for one interaction is the sum of all the individual model calls. As a result, the per-interaction total can go beyond the context window of a single model call.

The Copilot Studio standard harness doesn't enforce a token limit across calls within a conversational turn. The context window setting drives conversation history trimming and compaction to stay within the model's context window. But it doesn't prevent the total token usage from exceeding the model's context window during a turn. The per-turn total token usage can be higher than the context window of a single model call without triggering any "max token length exceeded" errors.

Licensing

In agents, flows, or apps, prompts that use models consume Copilot Credits, regardless of the models' release stage. Learn more in Billing rates and management.

If you have AI Builder credits, the system consumes them first when prompts are used in Power Apps and Power Automate. The system doesn't consume AI Builder credits when prompts are used in Copilot Studio. Learn more in Overview of licensing in the AI Builder documentation.

Release stages

Models go through different stages of release. You can try new, cutting-edge experimental and preview models, or choose a reliable, thoroughly tested generally available model.

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Tag                                 Description
  ----------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Experimental                        Meant for experimentation, and not for production use. Subject to preview terms, and can have limitations on availability and quality.

  Preview                             Eventually becomes a generally available model, but currently isn't recommended for production use. Subject to preview terms, and can have limitations on availability and quality.

  No tag                              Generally available. You can use this model for scaled and production use. In most cases, generally available models have no limitations on availability and quality, but some might still have some limitations, like regional availability.
                                      Important: Anthropic Claude models are at the experimental stage, even though they don't display a tag.

  Default                             The default model for all agents, and usually the best performing generally available model. The default model is periodically upgraded as new, more capable models become generally available. Agents also use the default model as a fallback if a selected model is turned off or unavailable.
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Experimental and preview models might show variability in performance, response quality, latency, or message consumption. They might time out or be unavailable. They're subject to preview terms.

Categorization

The following table describes the different model categories.

  Category      Mini                                                              General                                                          Deep
  ------------- ----------------------------------------------------------------- ---------------------------------------------------------------- ------------------------------------------------------------------
  Performance   Good for most tasks                                               Superior for complex tasks                                       Trained for reasoning tasks
  Speed         Faster processing                                                 Might be slower due to complexity                                Slower, as it reasons before responding
  Use cases     Summarization, information tasks, image and document processing   Image and document processing, advanced content creation tasks   Data analysis and reasoning tasks, image and document processing

Choose a mini model when you need a cost-effective solution for moderately complex tasks, have limited computational resources, or require faster processing. Mini models are ideal for projects with budget constraints and applications like customer support or efficient code analysis.

Choose a general model when you're dealing with highly complex, multimodal tasks that require superior performance and detailed analysis. It's the better choice for large-scale projects where accuracy and advanced capabilities are crucial. A general model is also a good choice when you have the budget and computational resources to support it. General models are also preferable for long-term projects that might grow in complexity over time.

Deep models excel for projects requiring advanced reasoning capabilities. They're suitable for scenarios that demand sophisticated problem-solving and critical thinking. Deep models excel in environments where nuanced reasoning, complex decision-making, and detailed analysis are important.

Choose among the models based on region availability, functionalities, use cases, and costs. Learn about which models are available in your region and model retirement schedules in Model availability by region and updates. Learn more about pricing in AI Builder Capability Rate table.

Model settings

You can access the settings panel by selecting the three dots (…) > Settings at the top of the prompt builder. You can change the following settings:

-   Temperature: Lower temperatures lead to predictable results. Higher temperatures allow more diverse or creative responses.
-   Record retrieval: Number of records retrieved for your knowledge sources.
-   Include links in the response: When selected, the response includes link citations for the retrieved records.
-   Enable code interpreter: When selected, code interpreter to generate and execute code is enabled.
-   Content moderation level: The lowest level generates the most answers, but they might contain harmful content. The highest level of content moderation applies a stricter filter to restrict harmful content and generates fewer answers.

Temperature

Set the temperature for the generative AI model by using the slider. It ranges between 0 and 1. This value guides the generative AI model about how much creativity (1) versus deterministic answer (0) it provides.

Note

The temperature setting isn't available for the GPT-5 reasoning model. For this reason, the slider is disabled when you select the GPT-5 reasoning model.

The temperature is a parameter that controls the randomness of the output generated by the AI model. A lower temperature results in more predictable and conservative outputs. In comparison, a higher temperature allows for more creativity and diversity in the responses. It's a way to fine-tune the balance between randomness and determinism in the model's output.

By default, the temperature is 0, as in previously created prompts.

  -----------------------------------------------------------------------------------------------------------------------------------------
  Temperature             Functionality                                          Use in
  ----------------------- ------------------------------------------------------ ----------------------------------------------------------
  0                       More predictable and conservative outputs.             Prompts that require high accuracy and less variability.
                          Responses are more consistent.                         

  1                       More creativity and diversity in the responses.        Prompts that create new out-of-the-box content.
                          More varied and sometimes more innovative responses.   
  -----------------------------------------------------------------------------------------------------------------------------------------

Adjusting the temperature can influence the model's output, but it doesn't guarantee a specific result. The AI's responses are inherently probabilistic and can vary with the same temperature setting.

Content moderation level

Set the content moderation level for the prompt by using the slider. With a lower moderation level, your prompt can provide more answers. However, the increase in answers might affect the allowance of harmful content (hate and fairness, sexual, violence, self-harm) from the prompt.

Note

The Content moderation level setting is available only for managed models. For this reason, the slider is unavailable when you select Anthropic or Azure AI Foundry models.

The moderation levels range from Low to High. The default moderation level for prompts is Moderate.

Lower moderation increases the risk of harmful content in your prompt's responses. Higher moderation lowers that risk, but might reduce the number of responses.

  Content moderation level   Description                                                                                                                                                                                                                                                                                                                      Suggested use
  -------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
  Low                        Might allow hate and fairness, sexual, violence, or self-harm content that displays explicit and severe harmful instructions, actions, damage, or abuse. Includes endorsement, glorification, or promotion of severe harmful acts, extreme or illegal forms of harm, radicalization, or nonconsensual power exchange or abuse.   Use for prompts processing data that could be considered as harmful content (for example, descriptions of violence or medical procedures).
  Moderate                   Might allow hate and fairness, sexual, violence, or self-harm content that uses offensive, insulting, mocking, intimidating, or demeaning language towards specific identity groups. Includes depictions of seeking and executing harmful instructions, fantasies, glorification, promotion of harm at medium intensity.         Default filtering. Appropriate for most uses.
  High                       Might allow hate and fairness, sexual, violence, or self-harm content that expresses prejudiced, judgmental, or opinionated views. Includes offensive use of language, stereotyping, use-cases exploring a fictional world (for example, gaming, literature), and depictions at low intensity.                                   Use if you need more filtering more restrictive than the Moderate level.

To override the content moderation setting of the agent when using the prompt in an agent, set the After running setting in the Completion screen of the prompt tool to Send specific response (specify below). The Message to display should contain the Output.predictionOutput.text custom variable.

[Screenshot of the 'Completion' screen with the 'Send specific response (specify below)' setting.]

------------------------------------------------------------------------

Feedback

Was this page helpful?

Yes

No

No

Need help with this topic?

Want to try using Ask Learn to clarify or guide you through this topic?

Ask Learn

Ask Learn

Suggest a fix?

------------------------------------------------------------------------

Additional resources

------------------------------------------------------------------------

-    Last updated on 2026-08-05

