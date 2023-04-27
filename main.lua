-- Things I might want to add:
-- -ACTION_TOOL_DRAW_COORDINATE_SYSTEM (currently no way to turn it off!)
-- -ACTION_TOOL_DRAW_LINE currently doesn't exist!


-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Pen", ["callback"] = "pen", ["accelerator"] = "w"});
  app.registerUi({["menu"] = "Highlighter", ["callback"] = "highlighter", ["accelerator"] = "q"});
  app.registerUi({["menu"] = "Select Region", ["callback"] = "lasso", ["accelerator"] = "g"});
  app.registerUi({["menu"] = "Blue Tool", ["callback"] = "blue_tool", ["accelerator"] = "f"});
  app.registerUi({["menu"] = "Red Tool", ["callback"] = "red_tool", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Green Tool", ["callback"] = "green_tool", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Orange Tool", ["callback"] = "orange_tool", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Redo", ["callback"] = "redo", ["accelerator"] = "<Shift>r"});
  app.registerUi({["menu"] = "Copy", ["callback"] = "copy", ["accelerator"] = "<Control>c"});
  app.registerUi({["menu"] = "Paste", ["callback"] = "paste", ["accelerator"] = "<Control>v"});
  app.registerUi({["menu"] = "Cut", ["callback"] = "cut", ["accelerator"] = "<Control>x"});
  app.registerUi({["menu"] = "Delete", ["callback"] = "delete", ["accelerator"] = "t"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Select Object", ["callback"] = "select_object", ["accelerator"] = "<Shift>g"});
  -- app.registerUi({["menu"] = "Draw Coordinates", ["callback"] = "draw_coords", ["accelerator"] = "c"});
  -- app.registerUi({["menu"] = "Tool Default", ["callback"] = "tool_default", ["accelerator"] = "v"});
end

-- "pen" or "highlighter";
local currentTool = "pen"

function pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  currentTool = "pen"
end

function highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  currentTool = "highlighter"
end

function blue_tool()
  if (currentTool == "pen") then
    -- This changes the color of currently selected strokes
    app.changeToolColor({["color"] = 0x3333CC, ["selection"] = true})
    -- This changes the color of the pen
    app.changeToolColor({["color"] = 0x3333CC, ["tool"] = "pen"})
  end
  if (currentTool == "highlighter") then
    app.changeToolColor({["color"] = 0x20D0FF, ["tool"] = "highlighter"})
  end
end

function green_tool()
  if (currentTool == "pen") then
    app.changeToolColor({["color"] = 0x008000, ["selection"] = true})
    app.changeToolColor({["color"] = 0x008000, ["tool"] = "pen"})
  end
  if (currentTool == "highlighter") then
    app.changeToolColor({["color"] = 0x00FF00, ["tool"] = "highlighter"})
  end
end

function red_tool()
  if (currentTool == "pen") then
    app.changeToolColor({["color"] = 0xEF0044, ["selection"] = true})
    app.changeToolColor({["color"] = 0xEF0044, ["tool"] = "pen"})
  end
  if (currentTool == "highlighter") then
    app.changeToolColor({["color"] = 0xFF55FF, ["tool"] = "highlighter"})
  end
end

function orange_tool()
  if (currentTool == "pen") then
    app.changeToolColor({["color"] = 0xEF7000, ["selection"] = true})
    app.changeToolColor({["color"] = 0xEF7000, ["tool"] = "pen"})
  end
  if (currentTool == "highlighter") then
    app.changeToolColor({["color"] = 0xEEFF00, ["tool"] = "highlighter"})
  end
end

function lasso()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end

function undo()
  app.uiAction({["action"] = "ACTION_UNDO"})
end

function redo()
  app.uiAction({["action"] = "ACTION_REDO"})
end

function copy()
  app.uiAction({["action"] = "ACTION_COPY"})
end

function cut()
  app.uiAction({["action"] = "ACTION_CUT"})
end

function paste()
  app.uiAction({["action"] = "ACTION_PASTE"})
end

function delete()
  app.uiAction({["action"] = "ACTION_DELETE"})
end

function eraser()
  app.uiAction({["action"] = "ACTION_TOOL_ERASER"})
end

function select_object()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_OBJECT"})
end

-- Disable this because it doesn't turn the ruler off again
-- function ruler()
--   app.uiAction({["action"] = "ACTION_RULER"})
-- end

-- function draw_coords()
--   app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM"})
-- end

-- Disabled because default is thin black line, instead of previous thickness/color
-- function tool_default()
--  app.uiAction({["action"] = "ACTION_TOOL_DEFAULT"})
-- end