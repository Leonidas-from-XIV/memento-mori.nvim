--- memento-mori.nvim --- Reminder of mortality
--
-- Author: Marek Kubica <marek@xivilization.net>
-- URL: https://github.com/Leonidas/memento-mori.nvim
-- Version: 0.1.0
-- Package-Requires: neovim
--
-- This file is also not part of GNU Emacs.
--
--; Commentary:
--
-- Shows your age in the mode line as a reminder to squander
-- less of your brief time on this earth.
--
-- Your age is shown with two decimal places so you can witness it
-- increasing every 3-4 days. People commonly regard themselves as N
-- years old until the day they turn N+1 years old. The decimals
-- remind you that this is false comfort: many N-year-olds are already
-- closer to being N+1 years old.
--

local o = {}

local parseBirthdate = function(dts)
  assert(dts ~= nil)
  assert(type(dts) == "string")
  local pattern = "(%d+)-(%d+)-(%d+)"
  local year, month, day = dts:match(pattern)
  local time = os.time({day=day, month=month, year=year})
  return time
end

o.reflect = function(startDate)
  local startDate = parseBirthdate(startDate)
  local currentTime = os.time()
  local difference = os.difftime(currentTime, startDate)
  local years = difference / (365.2425 * 24 * 60 * 60)
  local formatted = string.format("%.2f", years)
  return formatted
end

return o
