require("codecompanion").setup {
  display = {
    action_palette = {
      width = 95,
      height = 10,
      prompt = "Prompt ", -- Prompt used for interactive LLM calls
      provider = "telescope", -- default|telescope|mini_pick
      opts = {
        show_default_actions = true, -- Show the default actions in the action palette?
        show_default_prompt_library = true, -- Show the default prompt library in the action palette?
      },
    },
},
strategies = {
    chat = {
	adapter = "llama3.2-vision",
    },
    inline = {
	adapter = "llama3.2-vision",
    },
},
adapters = {
    ["llama3.2-vision"] = function()
	return require("codecompanion.adapters").extend(
	    "ollama",
	    {
		name = "llama3.2-vision",
		schema = {
		    model = {
			default = "llama3.2-vision:latest",
		    },
		    num_ctx = {
			default = 16384,
		    },
		    num_predict = {
			default = -1,
		    },
		},
	    }
	)
    end,
["qwen2.5-coder"] = function()
return require("codecompanion.adapters").extend(
    "ollama",
    {
	name = "qwen2.5-coder",
	schema = {
	    model = {
		default = "qwen2.5-coder:latest",
	    },
	    num_ctx = {
		default = 16384,
	    },
	    num_predict = {
		default = -1,
	    },
	},
    }
)
end,
},
}
