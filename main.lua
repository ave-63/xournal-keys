-- Things I might want to add:
-- -ACTION_ROTATION_SNAPPING
-- -ACTION_GRID_SNAPPING
-- -ACTION_RULER (Does this toggle ruler, or is there a way to specify on/off?)
-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Hand", ["callback"] = "hand", ["accelerator"] = "a"});
  app.registerUi({["menu"] = "Select Region", ["callback"] = "lasso", ["accelerator"] = "g"});
  app.registerUi({["menu"] = "Pen", ["callback"] = "pen", ["accelerator"] = "f"});
  app.registerUi({["menu"] = "Highlighter", ["callback"] = "highlighter", ["accelerator"] = "<Shift>f"});
  app.registerUi({["menu"] = "Undo", ["callback"] = "undo", ["accelerator"] = "r"});
  app.registerUi({["menu"] = "Redo", ["callback"] = "redo", ["accelerator"] = "<Shift>r"});
  app.registerUi({["menu"] = "Copy", ["callback"] = "copy", ["accelerator"] = "c"});
  app.registerUi({["menu"] = "Paste", ["callback"] = "paste", ["accelerator"] = "v"});
  app.registerUi({["menu"] = "Cut", ["callback"] = "cut", ["accelerator"] = "x"});
  app.registerUi({["menu"] = "Delete", ["callback"] = "delete", ["accelerator"] = "t"});
--  app.registerUi({["menu"] = "Ruler", ["callback"] = "ruler", ["accelerator"] = "w"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "eraser", ["accelerator"] = "e"});
  app.registerUi({["menu"] = "Vertical space", ["callback"] = "space", ["accelerator"] = "s"});
  app.registerUi({["menu"] = "Colors/black", ["callback"] = "black", ["accelerator"] = "1"});
  app.registerUi({["menu"] = "Colors/red", ["callback"] = "red", ["accelerator"] = "2"});
  app.registerUi({["menu"] = "Colors/green", ["callback"] = "green", ["accelerator"] = "3"});
end

function black()
	app.changeToolColor({["color"] = 0x000000, ["tool"] = "pen", ["selection"] = true})
end

function red()
	app.changeToolColor({["color"] = 0xff0000, ["tool"] = "pen", ["selection"] = true})
end

function green()
	app.changeToolColor({["color"] = 0x00ff00, ["tool"] = "pen", ["selection"] = true})
end

function hand()
  app.uiAction({["action"] = "ACTION_TOOL_HAND"})
end

function lasso()
  app.uiAction({["action"] = "ACTION_TOOL_SELECT_REGION"})
end

function pen()
  app.uiAction({["action"] = "ACTION_TOOL_PEN"})
end

function highlighter()
  app.uiAction({["action"] = "ACTION_TOOL_HILIGHTER"})
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

function space()
  app.uiAction({["action"] = "ACTION_TOOL_VERTICAL_SPACE"})
end

-- Disable this because it doesn't turn the ruler off again
-- function ruler()
--   app.uiAction({["action"] = "ACTION_RULER"})
-- end
