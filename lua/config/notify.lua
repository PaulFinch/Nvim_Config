vim.notify = function(message, level, options)
    local text = type(message) == "string" and message or vim.inspect(message)

    if text:match("^Failed to open log file at .+ for module blink%.cmp:") then
        return
    end

    local echo = function()
        vim.api.nvim_echo({ { text } }, true, {
            err = level == vim.log.levels.ERROR,
        })
    end

    if vim.in_fast_event() then
        vim.schedule(echo)
    else
        echo()
    end
end
