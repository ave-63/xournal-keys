-- Things I might want to add:
-- -ACTION_ROTATION_SNAPPING
-- -ACTION_GRID_SNAPPING
-- -ACTION_RULER (Does this toggle ruler, or is there a way to specify on/off?)
-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Select Region", ["callback"] = "lasso", ["accelerator"] = "g"});
  app.registerUi({["menu"] = "Blue Pen", ["callback"] = "blue_pen", ["accelerator"] = "f"});
  app.registerUi({["menu"] = "Red Pen", ["callback"] = "red_pen", ["accelerator"] = "d"});
  app.registerUi({["menu"] = "Green Pen", ["callback"] = "green_pen", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Orange Pen", ["callback"] = "orange_pen", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Blue Highlighter", ["callback"] = "blue_highlighter", ["accelerator"] = "<Shift>f"});
  app.registerUi({["menu"] = "Red Highlighter", ["callback"] = "red_highlighter", ["accelerator"] = "<Shift>d"});
  app.registerUi({["menu"] = "Green Highlighter", ["callback"] = "green_highlighter", ["accelerator"] = "<Shift>s"});
  app.registerUi({["menu"] = "Yellow Highlighter", ["callback"] = "yellow_highlighter", ["accelerator"] = "<Shift>a"});
  app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Redo", ["callback"] = "redo", ["accelerator"] = "<Shift>r"});
  app.registerUi({["menu"] = "Copy", ["callback"] = "copy", ["accelerator"] = "c"});
  app.registerUi({["menu"] = "Paste", ["callback"] = "paste", ["accelerator"] = "v"});
  app.registerUi({["menu"] = "Cut", ["callback"] = "cut", ["accelerator"] = "x"});
  app.registerUi({["menu"] = "Delete", ["callback"] = "delete", ["accelerator"] = "t"});
--  app.registerUi({["menu"] = "Ruler", ["callback"] = "ruler", ["accelerator"] = "w"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Select Object", ["callback"] = "select_object", ["accelerator"] = "<Shift>g"});
end

function lasso()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end

function blue_pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.changeToolColor({["color"] = 0x3333CC, ["tool"] = "pen"})
end

function red_pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.changeToolColor({["color"] = 0xEF0044, ["tool"] = "pen"})
end

function green_pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.changeToolColor({["color"] = 0x008000, ["tool"] = "pen"})
end

function orange_pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
  app.changeToolColor({["color"] = 0xEF7000, ["tool"] = "pen"})
end

function blue_highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.changeToolColor({["color"] = 0x20D0FF, ["tool"] = "highlighter"})
end

function red_highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.changeToolColor({["color"] = 0xFF55FF, ["tool"] = "highlighter"})
--  app.changeToolColor({["color"] = 0xFF22FF, ["tool"] = "highlighter"})
end

function green_highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.changeToolColor({["color"] = 0x00FF00, ["tool"] = "highlighter"})
end

function yellow_highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HIGHLIGHTER"})
  app.changeToolColor({["color"] = 0xEEFF00, ["tool"] = "highlighter"})
end

function undo()
  app.uiAction({["action"] = "ACTION_UNDO"})
end

-- This doesn't work?
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
