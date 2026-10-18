local public = {}

local function getLayoutWidth(control)
    if (control == nil) then
        local w, _ = game.GetUICanvasSize();
        return w;
    elseif (control.anchorMinX == control.anchorMaxX) then
        return control.sizeDeltaX;
    else
        return (getLayoutWidth(control.parent) * (control.anchorMaxX - control.anchorMinX)) + control.sizeDeltaX;
    end
end

local function getLayoutHeight(control)
    if (control == nil) then
        local _, h = game.GetUICanvasSize();
        return h;
    elseif (control.anchorMinY == control.anchorMaxY) then
        return control.sizeDeltaY;
    else
        return (getLayoutHeight(control.parent) * (control.anchorMaxY - control.anchorMinY)) + control.sizeDeltaY;
    end
end

local function getScaleX(control)
    if (control == nil) then
        return 1;
    end
    return getScaleX(control.parent) * control.localScaleX;
end

local function getScaleY(control)
    if (control == nil) then
        return 1;
    end
    return getScaleY(control.parent) * control.localScaleY;
end

---@param control ClientControlType?
function public.getCanvasWidth(control)
    return getLayoutWidth(control) * getScaleX(control);
end

---@param control ClientControlType?
function public.getCanvasHeight(control)
    return getLayoutHeight(control) * getScaleY(control);
end

return public