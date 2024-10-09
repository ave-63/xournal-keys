-- Things I might want to add:
-- -ACTION_TOOL_DRAW_COORDINATE_SYSTEM (currently no way to turn it off!)
-- -ACTION_TOOL_DRAW_LINE currently doesn't exist!


-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Pen", ["callback"] = "pen", ["accelerator"] = "b"});
  -- app.registerUi({["menu"] = "Highlighter", ["callback"] = "highlighter", ["accelerator"] = "q"});
  app.registerUi({["menu"] = "Select Region", ["callback"] = "lasso", ["accelerator"] = "g"});
  
  app.registerUi({["menu"] = "Blue Pen", ["callback"] = "blue_pen", ["accelerator"] = "f"});
  app.registerUi({["menu"] = "Red Pen", ["callback"] = "red_pen", ["accelerator"] = "c"});
  app.registerUi({["menu"] = "Green Pen", ["callback"] = "green_pen", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Orange Pen", ["callback"] = "orange_pen", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Cyan Pen", ["callback"] = "cyan_pen", ["accelerator"] = "z"});
  app.registerUi({["menu"] = "Magenta Pen", ["callback"] = "magenta_pen", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Lime Pen", ["callback"] = "lime_pen", ["accelerator"] = "x"});
  app.registerUi({["menu"] = "Black Pen", ["callback"] = "black_pen", ["accelerator"] = "v"});

  app.registerUi({["menu"] = "Blue Highlighter", ["callback"] = "blue_hl", ["accelerator"] = "<Shift>f"});
  app.registerUi({["menu"] = "Red Highlighter", ["callback"] = "red_hl", ["accelerator"] = "<Shift>d"});
  app.registerUi({["menu"] = "Green Highlighter", ["callback"] = "green_hl", ["accelerator"] = "<Shift>s"});
  app.registerUi({["menu"] = "Yellow Highlighter", ["callback"] = "yellow_hl", ["accelerator"] = "<Shift>a"});

app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Redo", ["callback"] = "redo", ["accelerator"] = "<Shift>r"});
  app.registerUi({["menu"] = "Copy", ["callback"] = "copy", ["accelerator"] = "<Control>Insert"});
  app.registerUi({["menu"] = "Paste", ["callback"] = "paste", ["accelerator"] = "<Shift>Insert"});
  app.registerUi({["menu"] = "Cut", ["callback"] = "cut", ["accelerator"] = "<Control>x"});
  app.registerUi({["menu"] = "Delete", ["callback"] = "delete", ["accelerator"] = "t"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Select Object", ["callback"] = "select_object", ["accelerator"] = "<Shift>g"});
  app.registerUi({["menu"] = "Draw Coordinates", ["callback"] = "draw_coords", ["accelerator"] = "q"});
  app.registerUi({["menu"] = "Ruler", ["callback"] = "ruler", ["accelerator"] = "w"});
end

-- "pen" or "highlighter";
-- local currentTool = "pen"

function pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
--  currentTool = "pen"
end

--function highlighter()
--  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
--  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
--  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
--  currentTool = "highlighter"
--end

-- Notes: Changing selected strokes is not working. If there are no selected strokes,
-- or the current tool is not a pen/HL, then app.changeToolColor throws an error.
-- To make it work, we need some way of programatically testing if there is a selection.
function blue_pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0x3333CC, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0x1313CC, ["tool"] = "pen"})
end

function blue_hl()
  app.changeToolColor({["color"] = 0x20D0FF, ["tool"] = "highlighter"})
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
end

function green_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0x008000, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0x00A000, ["tool"] = "pen"})
end

function green_hl()
  app.changeToolColor({["color"] = 0x00FF00, ["tool"] = "highlighter"})
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
end

function red_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0xEF0044, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0xEF0044, ["tool"] = "pen"})
end

function red_hl()
  app.changeToolColor({["color"] = 0xFF55FF, ["tool"] = "highlighter"})
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
end

function orange_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0xEF7000, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0xEF7000, ["tool"] = "pen"})
end

function yellow_hl()
  app.changeToolColor({["color"] = 0xEEFF00, ["tool"] = "highlighter"})
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
end

function cyan_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0x00BFE6, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0x00BFE6, ["tool"] = "pen"})
end

function magenta_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0xCC00CC, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0xCC00CC, ["tool"] = "pen"})
end

function lime_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0xBFE600, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0xBFE600, ["tool"] = "pen"})
end

function black_pen()
  -- This changes the color of currently selected strokes
  -- app.changeToolColor({["color"] = 0x000000, ["selection"] = true})
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM", ["enabled"] = false})
  app.uiAction({["action"] = "ACTION_TOOL_RULER", ["enabled"] = false})
  -- This changes the color of the pen
  app.changeToolColor({["color"] = 0x000000, ["tool"] = "pen"})
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

function ruler()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_RULER"})
--  currentTool = "pen"
end

function draw_coords()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.uiAction({["action"] = "ACTION_TOOL_DRAW_COORDINATE_SYSTEM"})
--  currentTool = "pen"
end

